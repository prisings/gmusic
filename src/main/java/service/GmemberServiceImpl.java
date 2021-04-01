package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.GmemberDAO;
import vo.GmemberVO;

@Service
public class GmemberServiceImpl implements GmemberService {

	@Autowired
	GmemberDAO dao;
	
	
	public List<GmemberVO> selectList() {
		return dao.selectList();
	}


	public int insert(GmemberVO vo) {
		return dao.insert(vo);
	}


	public GmemberVO selectOne(GmemberVO vo) {
		return dao.selectOne(vo);
	}


	public int update(GmemberVO vo) {
		return dao.update(vo);
	}
	

}
