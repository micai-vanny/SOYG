package co.mini.soyg.likeIt.serviceImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.likeIt.service.LikeItService;
import co.mini.soyg.likeIt.vo.LikeItVO;

@Repository
public class LikeItServiceImpl implements LikeItService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int likeItUpdate(LikeItVO vo) {
		// 좋아요 버튼 클릭 시 likeit 테이블에 정보 입력
		return sqlSession.update("likeItUpdate", vo);
	}

	@Override
	public int likeItUndo(LikeItVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int likeItCheck(LikeItVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public LikeItVO likeItCount(LikeItVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
