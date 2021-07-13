package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;

@Controller
public class IdcheckController {
	@Autowired
	private LoginCatalog loginCatalog;
	@RequestMapping(value="/idcheck/idcheck.html")
	public ModelAndView idcheck(String USER_ID) {
		ModelAndView mav = new ModelAndView("idCheck");//home/idCheck
		Integer cnt = loginCatalog.getIdCnt(USER_ID);//입력된 계정의 갯수를 검색
		if(cnt > 0) mav.addObject("DUP","YES");
		else mav.addObject("DUP","NO");
		mav.addObject("ID",USER_ID);
		return mav;
	}
}
