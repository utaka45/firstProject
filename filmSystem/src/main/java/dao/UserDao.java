package dao;

import java.util.List;

import model.Confirm;
import model.User;

public interface UserDao {
	User findByIdPwd(User user);
	List<Confirm> findConfirm(String id);

	// 예매내역 저장
	Integer getMaxCon();
	void create(Confirm con);
	
	//예매 내역 삭제
	void deleteCon(Integer id);
	
	
	//유저 목록 수정
	User findUser(String id);
	
	//수정
	void update(User user);
}
