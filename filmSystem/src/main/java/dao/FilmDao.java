package dao;

import java.util.List;

import model.Bullentin;
import model.Film;
import model.Join;
import model.Theater;

public interface FilmDao {
	//게시판 
	Integer getMaxSeqno();
	void putBull(Bullentin bullentin);
	
	
	Integer getMaxId();
	void create(Film film);
	List<Film> findAll();
	Film getFilmWriting(Integer id);
	
	//영화관
	void createTheater(Theater theater);
	Integer getTheaterNo();
	List<Theater> findTheater();
	
	//조인
	List<Join> findJoinAll(Integer id);
	
}
