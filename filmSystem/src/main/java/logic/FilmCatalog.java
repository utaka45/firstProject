package logic;

import java.util.List;

import model.Bullentin;
import model.Condition;
import model.Film;
import model.Join;
import model.Seat;
import model.Theater;

public interface FilmCatalog {
	//게시판
	void putBull(Bullentin bullentin);
	List<Bullentin> readBull(Condition cond);
	Integer getBullcount();
	Bullentin getBullDetail(Integer seqno);
	//
	void entryFilm(Film film);
	List<Film> getFilmList();
	Film getFilmWriting(Integer id);
	void createTheater(Theater theater);
	List<Theater> getTheaterList();
	
	//조인
	List<Join> findJoinAll(Integer id);
	
	//좌석 찾기
	List<Seat> findSeatAll();
}
