package co.mini.soyg.main.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.main.service.MainService;
import co.mini.soyg.main.vo.MainVO;

@Repository
public class MainServiceImpl implements MainService {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MainVO> loginRegionGroupList() {
		//로그인 시 지역별 스터디 그룹 조회
		return null;
	}

	@Override
	public List<MainVO> recentlyRegGroupList() {
		//비로그인 시 최근 등록 스터디 그룹 조회
		return null;
	}
	
	@Override
	public List<MainVO> regionList(MainVO vo){
		// 지역별 스터디 클릭시 보여줄 스터디 그룹들
		return sqlSession.selectList("regionList", vo);
	}

	@Override
	public List<MainVO> fieldsList(MainVO vo) {
		// 분야별 스터디 카테고리 클릭 시 보여줄 스터디 그룹 리스트
		return sqlSession.selectList("fieldsList", vo);
	}

	@Override
	public List<MainVO> mainRegionList() {
		// 메인 지역별 카테고리 리스트
		return sqlSession.selectList("mainRegionList");
	}

	@Override
	public List<MainVO> mainFieldsList() {
		// 메인 분야별 카테고리 리스트
		return sqlSession.selectList("mainFieldsList");
	}

	@Override
	public List<MainVO> regselect() {
		// 지역별 카테고리 리스트
		return sqlSession.selectList("regSelect");
	}

	@Override
	public List<MainVO> fieldsSelect() {
		// 분야별 카테고리 리스트
		return sqlSession.selectList("fieldsSelect");
	}

	@Override
	public MainVO regionName(MainVO vo) {
		// 지역별 리스트 간판에 지역 이름 뿌려줄 거임...
		return sqlSession.selectOne("regionName", vo);
	}

}
