package dao;

import java.util.List;

import model.Bullentin;
import model.Condition;
import model.Seat;

public interface ReadDao {
	final String NAME="mapper.filmMapper";
	List<Bullentin> readBullentin(Condition cond);//해당 페이지 게시글 조회
	Integer getBullCount();//게시글의 갯수 조회
	Bullentin getBullDetail(Integer no);//해당 번호의 게시글 상세조회
	
	//좌석찾기
	List<Seat> findSeatAll();
}
