package dao;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bullentin;
import model.Film;
import model.Join;
import model.Theater;
@Repository
public class FilmDaoImpl implements FilmDao {
	@Autowired
	private SqlSession session;
	
	
	public Integer getMaxSeqno() {
		return session.selectOne("mapper.filmMapper.getMaxBullentin");
	}


	public void putBull(Bullentin bullentin) {
		Integer seqno= getMaxSeqno();
		if(seqno==null) seqno=0;
		bullentin.setSeqno(seqno+1);
		Calendar today = Calendar.getInstance();//작성일을 위해 날짜 객체 생성
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int date = today.get(Calendar.DATE);
		String bbsDate = year + "/";
		if(month < 10) bbsDate = bbsDate + "0" + month+"/";
		else bbsDate = bbsDate + month + "/";
		if(date < 10) bbsDate = bbsDate + "0" + date;
		else bbsDate = bbsDate + date;
		bullentin.setBdate(bbsDate);
		session.insert("mapper.filmMapper.putBullentin",bullentin);
	}


	public Integer getMaxId() {
		return session.selectOne("mapper.filmMapper.getMaxFilmid");
	}

	public void create(Film film) {
		Integer filmId = getMaxId();//가장 큰 글번호 검색
		if(filmId == null) filmId = 0;
		film.setFilmId(filmId+1);
		session.insert("mapper.filmMapper.putFilm",film);
	}

	public List<Film> findAll() {
		List<Film> filmList = session.selectList(
				"mapper.filmMapper.getFilmList");
		return filmList;
	}

	public Film getFilmWriting(Integer id) {
		return session.selectOne("mapper.filmMapper.getFilm",id);
	}

	
	//영화관
	
	public Integer getTheaterNo() {
		return session.selectOne("mapper.filmMapper.getTheaterNo");
	}
	
	public void createTheater(Theater theater) {
		Integer locId = getTheaterNo();//가장 큰 글번호 검색
		if(locId == null) locId = 0;
		theater.setLocId(locId+1);
		session.insert("mapper.filmMapper.putTheater",theater);
	}

	public List<Theater> findTheater() {
		List<Theater> theaterList =session.selectList("mapper.filmMapper.getLocList");
		return theaterList;
	}

	//조인
	public List<Join> findJoinAll(Integer id) {
		List<Join> joinList = session.selectList("mapper.filmMapper.getJoinFilm",id);
		return joinList;
	}

	

}
