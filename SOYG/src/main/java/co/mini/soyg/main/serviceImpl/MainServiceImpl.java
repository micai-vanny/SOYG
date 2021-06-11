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
	private SqlSession session;

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
		return session.selectList("regionList", vo);
	}

	@Override
	public List<MainVO> fieldsList(MainVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
