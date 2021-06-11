package co.mini.soyg.study.serviceImpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.mini.soyg.DAO;
import co.mini.soyg.study.service.StudyService;
import co.mini.soyg.study.vo.StudyVO;

@Repository
public class StudyServiceImpl extends DAO implements StudyService {
	@Autowired
	private SqlSession sqlSession;

	private PreparedStatement psmt;
	private ResultSet rs;

	@Override
	public List<StudyVO> StudySelectList() {
		List<StudyVO> list = new ArrayList<>();
		String sql = "SELECT * FROM class";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				StudyVO vo = new StudyVO();
				
				vo.setClassName(rs.getString("class_name"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
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

	// resource 반환
	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
