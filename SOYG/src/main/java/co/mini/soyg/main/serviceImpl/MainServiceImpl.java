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
	public List<MainVO> recentlyClassList() {
		//최근 등록 스터디 그룹 조회
		return sqlSession.selectList("recentlyClass");
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

	@Override
	public MainVO fieldsName(MainVO vo) {
		// 분야별 리스트 간판에 뿌려줄 분야명
		return sqlSession.selectOne("fieldsName", vo);
	}

	@Override
	public List<MainVO> searchClass(MainVO vo) {
		// 검색 기능
		return sqlSession.selectList("searchClass", vo);
	}

	@Override
	public MainVO likeCount(MainVO vo) {
		// 각 클래스별 좋아요 개수
		return sqlSession.selectOne("likeCount", vo);
	}

	@Override
	public List<MainVO> classCd() {
		// 클래스 코드만
		return sqlSession.selectList("classCd");
	}

	
}
