package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import criteria.Criteria;
import vo.FaqVO;
import vo.PageVO;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession; 
	
	// SqlSession (Interface) -> SqlSessionTemplate (servl...xml 에 Bean 등록)
	private static final String NS ="com.ncs.FaqMapper.";
	
	//SearchCriteria PageList
	public int searchRowCountF(Criteria cri) {
		return sqlSession.selectOne(NS+"searchRowCount");
	}  
	public List<FaqVO> searchFList(Criteria cri) {
		return sqlSession.selectList(NS+"searchFList",cri);
	}
	
	// ** Criteria PageList	
		public List<FaqVO> criBList(Criteria cri) {
			return sqlSession.selectList(NS+"pageList",cri);
		}
	
// ** Page BoardList
	public int totalRowCount() {
		return sqlSession.selectOne(NS+"totalRowCount");
	}  
	public List<FaqVO> pageList(PageVO<FaqVO> vo) {
		return sqlSession.selectList(NS+"pageList",vo);
	}
	
// ** Check BoardList
	public List<FaqVO> checkselectList(FaqVO vo) {
		return sqlSession.selectList(NS+"checkselectList",vo);
	}	

} //class
