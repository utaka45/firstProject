package controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import logic.FilmCatalog;
import model.Bullentin;
import model.Film;
import model.Theater;
import model.User;

@Controller
public class FilmController {
	@Autowired
	private FilmCatalog filmCatalog;
	
	//게시판 입력
	@RequestMapping(value="/film/writeBullentin.html")
	public ModelAndView writeBulletin(Bullentin bullentin,HttpSession session) {
		String id=(String)session.getAttribute("ADMIN");
		if(id==null) {
			ModelAndView mav =new ModelAndView("login");
			mav.addObject(new User());
			return mav;
		}else {
			bullentin.setId(id);
			this.filmCatalog.putBull(bullentin);
			return new ModelAndView("redirect:/read/read.html");
		}
		
	}
	
	//게시판 열기
	@RequestMapping(value="/film/put_bulletin.html")
	public ModelAndView bulletin() {
		ModelAndView mav =new ModelAndView("put_bulletin");
		mav.addObject(new Bullentin());
		return mav;
	}
	
	
	
	@RequestMapping(value="/film/index.html")
	public ModelAndView index() {
		List<Film> filmList =this.filmCatalog.getFilmList();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("filmList",filmList);//조회결과를 맵에 저장
		ModelAndView mav = new ModelAndView("index");//뷰이름 설정
		mav.addAllObjects(map);//맵을 ModelAndView에 저장
		return mav;
	}
	
	@RequestMapping(value="/film/putTheater.html")
	public ModelAndView putTheater(@Valid Theater theater,BindingResult br,HttpSession session) {
		if (br.hasErrors()) {
			ModelAndView mav = new ModelAndView("theater");
			mav.getModel().putAll(br.getModel());
			this.filmCatalog.createTheater(theater);
			return mav;
		}
		//ModelAndView mav= new ModelAndView("template");
		this.filmCatalog.createTheater(theater);
		return new ModelAndView("redirect:/film/index.html");
	}
	
	@RequestMapping(value="/film/theater.html")
	public ModelAndView theater() {
		ModelAndView mav =new ModelAndView("theater");
		mav.addObject(new Theater());
		return mav;
	}
	
	@RequestMapping(value = "/film/register.html")
	public ModelAndView register(@Valid Film film, BindingResult br, HttpServletRequest request) {
		if (br.hasErrors()) {
			ModelAndView mav = new ModelAndView("add");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		MultipartFile multiFile = film.getPicture();
		String fileName = null;
		String path = null;
		OutputStream out = null;
		if (multiFile != null) {
			fileName = multiFile.getOriginalFilename();
			path = request.getSession().getServletContext().getRealPath("/upload/" + fileName);
			//System.out.println("업로드경로:" + path);
			File file = new File(path);
			try {
				out = new FileOutputStream(path);
				BufferedInputStream bis = new BufferedInputStream(multiFile.getInputStream());
				byte[] buffer = new byte[8196];
				int read = 0;
				while ((read = bis.read(buffer)) > 0) {
					out.write(buffer, 0, read);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		film.setFilmPoster(fileName);
		this.filmCatalog.entryFilm(film);
		return new ModelAndView("redirect:/film/index.html");
	}
	
	@RequestMapping(value ="/film/result.html")
	public ModelAndView result() {
		ModelAndView mav = new ModelAndView("result");
		return mav;
	}
	
	@RequestMapping(value ="/film/upload.html")
	public ModelAndView create() {
		ModelAndView mav = new ModelAndView("add");
		mav.addObject(new Film());
		return mav;
	}
}
