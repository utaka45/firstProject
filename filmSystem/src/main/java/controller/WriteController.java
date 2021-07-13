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
import model.Confirm;
import model.Join;
import model.Seat;
import model.Theater;
import model.User;

@Controller
public class WriteController {
	@Autowired
	private FilmCatalog filmCatalog;
	@Autowired
	private UserCatalog userCatalog;
	
	@RequestMapping(value="/write/book_template.html")
	public ModelAndView book(HttpSession session) {
		List<Theater> theaterList =this.filmCatalog.getTheaterList(); 
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("theaterList",theaterList);
		ModelAndView mav = new ModelAndView("book_template");
		mav.addAllObjects(map);
		mav.addObject("BODY", "reservation_loc.jsp");
		return mav;
	}
	
//	@RequestMapping(value="/write/reservation_loc.html")
//	public ModelAndView reservationLocOne(HttpSession session) {
//		List<Theater> theaterList =this.filmCatalog.getTheaterList(); 
//		Map<String,Object> map = new HashMap<String,Object>();
//		map.put("theaterList",theaterList);
//		ModelAndView mav = new ModelAndView("book_template");
//		mav.addAllObjects(map);
//		mav.addObject("BODY", "reservation_loc.jsp");
//		return mav;
//	}

	//영화 맵핑
	@RequestMapping(value="/write/reservation_film.html")
	public ModelAndView reservationFilm(Integer pid,String name,HttpSession session) {
		Integer locId = pid;
		session.setAttribute("locId", locId);
		String locName=name;
		session.setAttribute("locName", locName);
		List<Theater> theaterList =this.filmCatalog.getTheaterList(); 
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("theaterList",theaterList);
		List<Join> joinList =this.filmCatalog.findJoinAll(pid);
		map.put("joinList",joinList);
		ModelAndView mav = new ModelAndView("book_template");
		mav.addAllObjects(map);
		mav.addObject(session.getAttribute("locName"));
		mav.addObject("BODY", "reservation_loc.jsp");
		mav.addObject("BODY1", "reservation_film.jsp");
		return mav;
	}

	
	//시간선택
	@RequestMapping(value="/write/resevation_schedule.html")
	public ModelAndView reservationSchedule(Integer pid,String name,HttpSession session) {
		String filmName =name;
		session.setAttribute("filmName", filmName);
		Integer locId=(Integer)session.getAttribute("locId");
		List<Theater> theaterList =this.filmCatalog.getTheaterList(); 
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("theaterList",theaterList);
		List<Join> joinList =this.filmCatalog.findJoinAll(locId);
		map.put("joinList",joinList);
		ModelAndView mav = new ModelAndView("book_template");
		mav.addAllObjects(map);
		mav.addObject(session.getAttribute("locName"));
		mav.addObject(session.getAttribute("filmName"));
		mav.addObject("BODY", "reservation_loc.jsp");
		mav.addObject("BODY1", "reservation_film.jsp");
		mav.addObject("BODY2", "reservation_schedule.jsp");
		return mav;
	}
	
	@RequestMapping(value="/write/date.html")
	public ModelAndView date(String date,HttpSession session) {
		String dateId =date;
		session.setAttribute("dateId", dateId);
		Integer locId=(Integer)session.getAttribute("locId");
		List<Theater> theaterList =this.filmCatalog.getTheaterList(); 
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("theaterList",theaterList);
		List<Join> joinList =this.filmCatalog.findJoinAll(locId);
		map.put("joinList",joinList);
		ModelAndView mav = new ModelAndView("book_template");
		mav.addAllObjects(map);
		mav.addObject("date",date);
		mav.addObject(session.getAttribute("locName"));
		mav.addObject(session.getAttribute("filmName"));
		mav.addObject("BODY", "reservation_loc.jsp");
		mav.addObject("BODY1", "reservation_film.jsp");
		mav.addObject("BODY2", "reservation_schedule.jsp");
		mav.addObject("BODY3", "reservation_seat.jsp");
		return mav;
	}
	
	@RequestMapping(value="/write/seat.html")
	public ModelAndView seat(User user,String time,HttpSession session) {
		String ftime=time;
		session.setAttribute("ftime", ftime);
		String userName = (String)session.getAttribute("loginUser");
		if(userName == null) {
			ModelAndView mav = new ModelAndView("login");
			mav.addObject(new User());
			return mav;
		}else {
			user.setUser_id(userName);
		}
		List<Seat> seatList=this.filmCatalog.findSeatAll();
//		ArrayList<Seat> newSeatList = new ArrayList<Seat>();
//		Iterator it = seatList.iterator();
//		while(it.hasNext()) {
//			Seat seat = (Seat)it.next();
//			String seatName = seat.getSeat();
//			String row=seatName.substring(4,5);
//			String col=seatName.substring(5,6);
//			seat.setCol(Integer.parseInt(col));
//			seat.setRow(Integer.parseInt(row));
//			newSeatList.add(seat);
//		}
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("seatList", seatList);
		ModelAndView mav =new ModelAndView("seat");
		mav.addAllObjects(map);
		return mav;
	}
	@RequestMapping(value="/write/confirm.html")
	public ModelAndView confirm(Confirm con,String seat,HttpSession session) {
		String locName= (String)session.getAttribute("locName");
		String filmName =(String)session.getAttribute("filmName");
		String dateId=(String)session.getAttribute("dateId");
		String userName = (String)session.getAttribute("loginUser");
		String ftime=(String)session.getAttribute("ftime");
		con.setLocName(locName);
		con.setFilmTitle(filmName);
		con.setConfirmDate(dateId);
		con.setConfrimTime(ftime);
		con.setSeat(seat);
		con.setUserId(userName);
		this.userCatalog.create(con);
		return new ModelAndView("redirect:/read/confirm.html");
	}
	
}
