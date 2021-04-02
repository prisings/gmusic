package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.GmemberVO;

@Repository
public class GmemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NS = "com.ncs.GmemberMapper.";
	
	public List<GmemberVO> selectList() {
		return sqlSession.selectList(NS+"selectList") ;
	}

	public int insert(GmemberVO vo) {
		return sqlSession.insert(NS+"insert", vo);
	}
	
	public int update(GmemberVO vo) {
		return sqlSession.insert(NS+"update", vo);
	}
	// 추가부분///////////////
	public GmemberVO selectOne(GmemberVO vo) {
		return sqlSession.selectOne(NS + "selectOne", vo);

	}

	public int checkOverId(String id) {
		return sqlSession.selectOne(NS + "checkOverId", id);
	}
	
	public int checkOverEmail(String email) {
		return sqlSession.selectOne(NS + "checkOverEmail", email);
	}
	
	
}
