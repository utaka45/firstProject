package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import model.Confirm;
import model.User;
@Service
public class UserCatalogImpl implements UserCatalog {
	@Autowired
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUser(User user) {
		return userDao.findByIdPwd(user);
	}

	public List<Confirm> findConfirm(String id) {
		return userDao.findConfirm(id);
	}

	public void create(Confirm con) {
		userDao.create(con);
	}

	public void deleteCon(Integer id) {
		userDao.deleteCon(id);
		
	}
	// 유저목록

	public User findUser(String id) {
		return userDao.findUser(id);
	}

	public void update(User user) {
		userDao.update(user);
	}
	
	
	
	


	
	
	
}
