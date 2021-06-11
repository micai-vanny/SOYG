package co.mini.soyg.adminUsers.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.adminUsers.service.UserService;
import co.mini.soyg.adminUsers.vo.UserVO;

@Repository
public class UserServiceImpl implements UserService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<UserVO> userList() {
		// TODO 전체 조회
		return sqlSession.selectList("userList");
	}

	@Override
	public UserVO userSelect(UserVO vo) {
		// TODO 하나 조회
		return sqlSession.selectOne("userSelect", vo);
	}

	@Override
	public int userInsert(UserVO vo) {
		// TODO 입력
		return sqlSession.insert("userInsert", vo);
	}

	@Override
	public int userUpdate(UserVO vo) {
		// TODO 수정
		return sqlSession.update("userUpdate", vo);
	}

	@Override
	public int userDelete(UserVO vo) {
		// TODO 삭제
		return sqlSession.update("userDelete", vo);
	}

}
