package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.LoginCatalog;
import model.User;

@Controller
public class EntryController {
	
	  @Autowired private LoginCatalog loginCatalog;
	  @RequestMapping(value="/entry/entry.html") 
	  public ModelAndView entry(User user, HttpSession session) { 
		  this.loginCatalog.putUser(user);//DB에 삽입
		  ModelAndView mav = new ModelAndView("entryResult");
		  session.setAttribute("loginUser", user.getUser_id());//가입하면 자동 로그인 상태설정
		  session.setAttribute("userName", user.getUser_name());
		  mav.addObject("BODY","loginResult.jsp"); return mav;
	  }
	  
	  @RequestMapping(value="/entry/userEntry.html")
		public ModelAndView entryForm() {
			ModelAndView mav = new ModelAndView("userEntry");
			mav.addObject(new User());
			mav.addObject("BODY","userEntry.jsp");
			return mav;
		}
	 
}
