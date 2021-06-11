package co.mini.soyg.main.serviceImpl;

import java.util.List;

import co.mini.soyg.main.service.MainService;
import co.mini.soyg.main.vo.MainVO;

public class MainServiceImpl implements MainService {

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

}
