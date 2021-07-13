package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FilmDao;
import dao.ReadDao;
import model.Bullentin;
import model.Condition;
import model.Film;
import model.Join;
import model.Seat;
import model.Theater;
@Service
public class FilmCatalogImpl implements FilmCatalog {
	@Autowired
	private FilmDao filmDao;
	@Autowired
	private ReadDao readDao;
	
	//게시판
	public List<Bullentin> readBull(Condition cond) {
		return this.readDao.readBullentin(cond);
	}
	public Integer getBullcount() {
		return this.readDao.getBullCount();
	}
	public Bullentin getBullDetail(Integer seqno) {
		return this.readDao.getBullDetail(seqno);
	}
	/////
	public void putBull(Bullentin bullentin) {
		this.filmDao.putBull(bullentin);
	}
	public void entryFilm(Film film) {
		this.filmDao.create(film);
	}
	public List<Film> getFilmList() {
		return this.filmDao.findAll();
	}
	public Film getFilmWriting(Integer id) {
		return this.filmDao.getFilmWriting(id);
	}
	public void createTheater(Theater theater) {
		this.filmDao.createTheater(theater);
	}
	public List<Theater> getTheaterList() {
		return this.filmDao.findTheater();
	}
	public List<Join> findJoinAll(Integer id) {
		return this.filmDao.findJoinAll(id);
	}
	
	//좌석 찾기
	public List<Seat> findSeatAll() {
		return this.readDao.findSeatAll();
	}
	
	
}
