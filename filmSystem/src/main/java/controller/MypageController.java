package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.UserCatalog;
import model.Confirm;

@Controller
public class MypageController {
		@Autowired
	 	private UserCatalog userCatalog;
	
		@RequestMapping(value="/myPage/delete.html")
		public ModelAndView delete(Integer con,HttpSession session) {
			userCatalog.deleteCon(con);
			return new ModelAndView("redirect:/myPage/mypage.html");
		}
		
		@RequestMapping(value="/myPage/mypage.html")
		public ModelAndView myPage(HttpSession session) {
			String id=(String)session.getAttribute("loginUser");
			List<Confirm> confirmList=userCatalog.findConfirm(id);
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("confirmList",confirmList);
			ModelAndView mav =new ModelAndView("myPage");
			mav.addAllObjects(map);
			return mav;
		}
}
