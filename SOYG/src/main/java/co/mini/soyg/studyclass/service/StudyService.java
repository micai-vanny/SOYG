package co.mini.soyg.studyclass.service;

import java.util.List;

import co.mini.soyg.studyclass.vo.StudyVO;

public interface StudyService {

	List<StudyVO> selectStudyList(String userId);
	StudyVO selectStudyClass(StudyVO vo);
	public int insertStudyClass(StudyVO vo);
	public int updateStudyClass(StudyVO vo);
	public int deleteStudyClass(StudyVO vo);
	
	
}
