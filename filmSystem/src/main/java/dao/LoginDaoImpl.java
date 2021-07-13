package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Pass;
import model.User;
@Repository
public class LoginDaoImpl implements LoginDao {
	private final String NAME ="mapper.userMapper";
	@Autowired
	private SqlSession session;
	public String getPassword(String id) {
		return session.selectOne(NAME+".getPassword",id);
	}

	public Integer getIdCount(String id) {
		return session.selectOne(NAME+".getIdCnt",id);
	}

	public void entryUser(User user) {
		session.insert(NAME+".putMember",user);
	}

	public User getUser(String id) {
		return session.selectOne(NAME+".selectMember",id);
	}
	//비밀 번호 찾기
	public String getPass(Pass pass) {
		return session.selectOne(NAME+".getPass",pass);
	}
	
	
}
