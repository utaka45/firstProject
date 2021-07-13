package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Confirm;
import model.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session = session;
	}

	public User findByIdPwd(User user) {
		
		return session.selectOne("mapper.userMapper.getUser",user);
	}

	public List<Confirm> findConfirm(String id) {
		List<Confirm> confirmList =session.selectList("mapper.userMapper.getConfirmList",id);
		return confirmList;
	}

	public Integer getMaxCon() {
		return session.selectOne("mapper.userMapper.getMaxConfirmId");
	}

	public void create(Confirm con) {
		Integer confirmId =getMaxCon();
		if(confirmId==null) confirmId=0;
		con.setConfirmId(confirmId+1);
		session.insert("mapper.userMapper.putConfirm",con);
	}

	public void deleteCon(Integer id) {
		session.delete("mapper.userMapper.deleteCon",id);
	}
	//유저 목록 찾기

	public User findUser(String id) {
		User user =session.selectOne("mapper.userMapper.getUserEntry",id);
		return user;
	}

	public void update(User user) {
		session.update("mapper.userMapper.updateUser",user);
	}
	
	
	

	
	
	
    
	
}
