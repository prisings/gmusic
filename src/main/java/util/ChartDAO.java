package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import criteria.Criteria;
import vo.MusicVO;
import vo.PageVO;

@Repository
public class ChartDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NS ="com.ncs.MusicMapper.";
	
	public List<MusicVO> searchPList(Criteria cri) {
		
		return sqlSession.selectList(NS+"searchPList",cri);
		
	}

}
