package co.mini.soyg.study.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.vo.StudyVO;
import co.mini.soyg.study.vo.TestVO;

@Repository()
public class StudyServiceImpl implements StudyService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<TestVO> StudySelectList() {
		List<TestVO> list = sqlSession.selectList("studySelectList");

		for (TestVO vo : list) {
			System.out.println(vo.getName());
			System.out.println(vo);
		}

		return sqlSession.selectList("studySelectList");
	}

	@Override
	public StudyVO studySelect(StudyVO vo) {
		vo = sqlSession.selectOne("studySelect", 13);
		System.out.println(vo.getClassName());

		return sqlSession.selectOne("studySelect", 13);
	}

	@Override
	public int studyInsert(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int studyUpdate(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int studyDelete(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
