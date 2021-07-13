package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Bullentin;
import model.Condition;
import model.Seat;
@Repository
public class ReadDaoImpl implements ReadDao {
	@Autowired
	private SqlSession session;
	
	public List<Bullentin> readBullentin(Condition cond) {
		return session.selectList(NAME+".getBull",cond);
	}

	public Integer getBullCount() {
		return session.selectOne(NAME+".getBullCount");
	}

	public Bullentin getBullDetail(Integer no) {
		return session.selectOne(NAME+".getBullRead",no);
	}

	public List<Seat> findSeatAll() {
		List<Seat> seatList = session.selectList(NAME+".getSeatNum");
		return seatList;
	}

		
}
