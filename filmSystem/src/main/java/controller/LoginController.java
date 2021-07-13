package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.FilmCatalog;
import logic.LoginCatalog;
import logic.UserCatalog;
import model.Film;
import model.Pass;
import model.User;

@Controller
public class LoginController {
	@Autowired
	private FilmCatalog filmCatalog;
	@Autowired
	private UserCatalog userCatalog;
	@Autowired
	private LoginCatalog loginCatalog;
	@Autowired
	private Validator loginValidator;
	
	public void setLoginValidator(Validator loginValidator) {
		this.loginValidator = loginValidator;
	}

	public void setUserCatalog(UserCatalog userCatalog) {
		this.userCatalog = userCatalog;
	}
	@RequestMapping(value="/login/passwordFind.html")
	public ModelAndView passFind(Pass pass) {
		String findPass = this.loginCatalog.getPass(pass);
		ModelAndView mav = new ModelAndView("findPass");
		mav.addObject("findPass",findPass);
		mav.addObject("id",pass.getUser_id());
		return mav;
	}
	
	//비번 찾기 입력창
	@RequestMapping(value="/login/passWrite.html")
	public ModelAndView passwrite() {
		ModelAndView mav = new ModelAndView("passwordForm");
		mav.addObject(new Pass());
		return mav;
	}
	
	@ModelAttribute
	public User setUp() {
		return new User();
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String loginFormSetup() {	
		return "login";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView loginSubmit(User user, BindingResult br, HttpSession session) {
		this.loginValidator.validate(user, br);
		ModelAndView mav = new ModelAndView("login");
		if(br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		List<Film> filmList =this.filmCatalog.getFilmList();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("filmList",filmList);
		User loginUser = this.userCatalog.getUser(user);
		User userName = this.userCatalog.getUser(user);
		if(loginUser != null) {
			if (loginUser.getUser_id().equals("admin")) {
				session.setAttribute("ADMIN", user.getUser_id());
				session.setAttribute("userName", userName.getUser_name());
				mav.addObject("loginUser", loginUser);
				mav.addObject("userName", userName);
			} else {
				session.setAttribute("loginUser", user.getUser_id());
				session.setAttribute("userName", userName.getUser_name());
				mav.addObject("loginUser", loginUser);
				mav.addObject("userName", userName);
			}
			return new ModelAndView("redirect:/film/index.html");
		} else {
			br.reject("error.login.user");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
	}
}
