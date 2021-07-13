package util;

import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import model.User;

public class LoginValidator implements Validator {

	public boolean supports(Class<?> clazz) {//자동호출 메서드
		return User.class.isAssignableFrom(clazz);
	}//User객체가 검증 대상 객체가 맞는지 리턴
	//검증할 대상은 User

	public void validate(Object target, Errors errors) {//폼체크 target 으로 값이 들어온다
		User user =(User)target;//검증 대상 객체를 수신
		System.out.println("입력된 계정:["+user.getUser_id()+"]");
		System.out.println("입력된 암호:["+user.getPassword()+"]");
		if( ! StringUtils.hasLength(user.getUser_id())) {//계정이 입력되지 않은 경우
			System.out.println("계정이 입력되지 않음");
			//error메세지는 properties에 들어있다. 
			//1번째 : 내용에 맞는 id를 가져와 넣는다
			//2번째 : 그 앞에 들어간 내용이 들어간다
			errors.rejectValue("user_id", "error.required");//rejectValue메서드가 errors(login.jsp)로 내보냄
		}
		if( ! StringUtils.hasLength(user.getPassword())) {//암호가 입력되지 않은 경우
			System.out.println("암호가 입력되지 않음");
			errors.rejectValue("password", "error.required");
		}
		//rejectValue는 항목에러
		if(errors.hasErrors()) {
			errors.reject("error.input.user");//reject는 폼에러
		}
	}

}
