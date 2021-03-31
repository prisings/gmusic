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
	
	
	
	
	
}
