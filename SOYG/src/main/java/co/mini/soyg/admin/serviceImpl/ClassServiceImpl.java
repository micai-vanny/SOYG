package co.mini.soyg.admin.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.admin.service.ClassService;
import co.mini.soyg.admin.vo.ClassVO;
import co.mini.soyg.admin.vo.Criteria;

@Repository
public class ClassServiceImpl implements ClassService {
	@Autowired
	private SqlSession sqlSession;

	// class전체리스트
	@Override
	public List<ClassVO> classSelectList() {
		return sqlSession.selectList("adminClassListSelect");
	}

	// class한건선택
	@Override
	public ClassVO classSelect(int class_code) {
		return sqlSession.selectOne("adminClassSelect", class_code);
	}

	// class삭제
	@Override
	public int classDelete (int class_code) {
		return sqlSession.delete("adminClassDelete", class_code);
	}

	// class 수정
	@Override
	public int classUpdate(ClassVO vo) {
		return sqlSession.update("adminClassUpdate", vo);
	}
	//class 목록조회 - 페이징
	@Override
	public List<ClassVO> list(Criteria cri) {
		return sqlSession.selectList("adminClassListSelect",cri);
	}
	//class 총 갯수 - 페이징
	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
