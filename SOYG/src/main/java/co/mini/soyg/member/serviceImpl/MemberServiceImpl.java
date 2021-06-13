package co.mini.soyg.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.member.service.MemberService;
import co.mini.soyg.member.vo.MemberVO;

@Repository
public class MemberServiceImpl implements MemberService {

	@Autowired
	   private SqlSession Session;
	
	//Id 중복체크
	@Override
	public boolean idCheck(MemberVO vo) {
		boolean b = false;
		String id = Session.selectOne("idCheck", vo);
		
		if(id != null)
			b = true;
		return b;
	}
	
	@Override
	public List<MemberVO> selectMemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMember(MemberVO vo) {
		return Session.insert("insertMember", vo);
	}

	@Override
	public int updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}