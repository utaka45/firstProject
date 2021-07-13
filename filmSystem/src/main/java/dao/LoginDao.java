package dao;


import model.Pass;
import model.User;

public interface LoginDao {
	String getPassword(String id);
	Integer getIdCount(String id);
	void entryUser(User user);
	User getUser(String id);
	//Custom 아닌, Entry사용해야함
	
	//비밀번호찾기
	String getPass(Pass pass);
	
}
