package co.mini.soyg.adminUsers.service;

import java.util.List;

import co.mini.soyg.adminUsers.vo.UserVO;

public interface UserService {

//	List<UserVO> userList();
	UserVO userSelect(UserVO vo);
	int userInsert(UserVO vo);
	int userUpdate(UserVO vo);
	int userDelete(UserVO vo);
	
	// 페이징
	List<UserVO> userPaging(UserVO vo);
	int userCnt();
}
