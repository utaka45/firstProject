package logic;

import java.util.List;

import model.Confirm;
import model.User;


public interface UserCatalog {
	User getUser(User user);	
	List<Confirm> findConfirm(String id);//예매찾기
	void create(Confirm con);//예매 삽입
	//예매 삭제
	void deleteCon(Integer id);
	
	//유저 목록 수정
	User findUser(String id);
	
	//수정
	void update(User user);
}
