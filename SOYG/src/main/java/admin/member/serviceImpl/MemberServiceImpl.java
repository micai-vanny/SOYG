package admin.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import admin.member.service.MemberService;
import admin.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> memberSelectList() {
		// TODO 전체 조회
		return sqlSession.selectList("memberList");
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO 하나 조회
		return sqlSession.selectOne("memberSelect", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		// TODO 입력
		return sqlSession.insert("memberInsert", vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		// TODO 수정
		return sqlSession.update("memberUpdate", vo);
	}

	@Override
	public int memberDelete(MemberVO vo) {
		// TODO 삭제
		return sqlSession.update("memberDelete", vo);
	}

}
