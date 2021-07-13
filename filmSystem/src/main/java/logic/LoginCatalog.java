package logic;

import model.Pass;
import model.User;

public interface LoginCatalog {
	void putUser(User user);
	String getPwd(String id);
	Integer getIdCnt(String  id);
	User getUser(String id);
	
	//비밀번호 찾기
	String getPass(Pass pass);
}
