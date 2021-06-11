package co.mini.soyg.main.service;

import java.util.List;

import co.mini.soyg.main.vo.MainVO;

public interface MainService {
	//로그인 시 지역별 스터디 그룹 조회
	List<MainVO> loginRegionGroupList();
	//비로그인 시 최근 등록 스터디 그룹 조회
	List<MainVO> recentlyRegGroupList();
	
	//지역별 스터디 아이콘 누를 시 처리
	List<MainVO> regionList(MainVO vo);
	
	//분야별 스터디 아이콘 누를 시 처리
	List<MainVO> fieldsList(MainVO vo);
}
