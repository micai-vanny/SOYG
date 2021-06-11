package co.mini.soyg.clas.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.clas.service.ClassService;
import co.mini.soyg.clas.vo.ClassVO;

@Repository("classDao")
public class ClassServiceImpl implements ClassService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ClassVO> classSelectList() {
		return sqlSession.selectList("classListSelect");
	}

	@Override
	public ClassVO classSelect(ClassVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int classInsert(ClassVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int classDelete(ClassVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int classUpdate(ClassVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
