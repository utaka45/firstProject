package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.FilmCatalog;
import logic.UserCatalog;
import model.Bullentin;
import model.Condition;
import model.Confirm;
import model.Film;
import model.User;

@Controller
public class ReadController {
	@Autowired
	private FilmCatalog filmCatalog;
	@Autowired
	private UserCatalog userCatelog;

	// 수정
	@RequestMapping(value = "/read/entryUpdate.html")
	public ModelAndView update(User user) {
		this.userCatelog.update(user);
		return new ModelAndView("redirect:/myPage/mypage.html");
	}

	@RequestMapping(value = "/read/entryList.html")
	public ModelAndView userEntry(HttpSession session) {
		String id = (String) session.getAttribute("loginUser");
		User user = this.userCatelog.findUser(id);
		ModelAndView mav = new ModelAndView("entryList");
		mav.addObject(user);
		return mav;
	}

	@RequestMapping(value = "/read/confirm.html")
	public ModelAndView confirm(HttpSession session) {
		session.setAttribute("filmName", " ");
		session.setAttribute("locName", " ");
		String id = (String) session.getAttribute("loginUser");
		List<Confirm> confirmList = this.userCatelog.findConfirm(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("confirmList", confirmList);
		ModelAndView mav = new ModelAndView("reservation_confirm");
		mav.addAllObjects(map);
		return mav;
	}

	// 게시판 상세 정보
	@RequestMapping(value = "/read/readDetail.html")
	public ModelAndView Bulldetail(Integer SEQNO) {
		ModelAndView mav = new ModelAndView("bulletin_read");
		Bullentin bull = this.filmCatalog.getBullDetail(SEQNO);
		mav.addObject("BUll", bull);
		return mav;
	}

	// 게시판 목록
	@RequestMapping(value = "/read/read.html")
	public ModelAndView readBullentin(Integer pageNo) {
		ModelAndView mav = new ModelAndView("bulletin_List");
		int currentPage = 0;
		if (pageNo == null)
			currentPage = 1;
		else
			currentPage = pageNo;
		int startRow = (currentPage - 1) * 5 + 1;
		int endRow = (currentPage * 10);
		Condition cond = new Condition();
		cond.setStartRow(startRow);
		cond.setEndRow(endRow);
		List<Bullentin> bullList = filmCatalog.readBull(cond);
		mav.addObject("BULLLIST", bullList);
		Integer totalCount = filmCatalog.getBullcount();
		int pageCount = totalCount / 10;
		if (totalCount % 5 > 0)
			pageCount++;
		mav.addObject("pageCount", pageCount);
		return mav;
	}

	@RequestMapping(value = "/read/filmListView.html")
	public ModelAndView read(Integer pid) {
		ModelAndView mav = new ModelAndView("filmRead");
		Film films = this.filmCatalog.getFilmWriting(pid);
		mav.addObject("FILM", films);
		return mav;
	}
}
