package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.LoginDao;
import model.Pass;
import model.User;
@Service
public class LoginCatalogImpl implements LoginCatalog {
	@Autowired
	private LoginDao loginDao;
	public void putUser(User user) {
		this.loginDao.entryUser(user);
	}

	public String getPwd(String id) {
		return this.loginDao.getPassword(id);
	}

	public Integer getIdCnt(String id) {
		return this.loginDao.getIdCount(id);
	}

	public User getUser(String id) {
		return this.loginDao.getUser(id);
	}
	//비밀번호 찾기
	public String getPass(Pass pass) {
		return this.loginDao.getPass(pass);
	}
	
	
}
