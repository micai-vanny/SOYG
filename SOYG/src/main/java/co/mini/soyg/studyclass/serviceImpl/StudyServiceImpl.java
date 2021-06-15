package co.mini.soyg.studyclass.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.studyclass.service.StudyService;
import co.mini.soyg.studyclass.vo.StudyVO;

@Repository
public class StudyServiceImpl implements StudyService {

	@Autowired
	private SqlSession Session;
	
	@Override
	public List<StudyVO> selectStudyList(String userId) {
		
		return Session.selectList("memberStudy");
	}

	@Override
	public StudyVO selectStudyClass(StudyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertStudyClass(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStudyClass(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteStudyClass(StudyVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
