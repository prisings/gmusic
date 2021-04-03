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
	
	public int update(GmemberVO vo ) {
		return dao.update(vo);
	}
	// 추가부분./////////////////
	public GmemberVO selectOne(GmemberVO vo) {
		return dao.selectOne(vo);
	}

	public int userIdCheck(String id) {
		return dao.checkOverId(id);
	}
	
	public int userEmailCheck(String email) {
		return dao.checkOverEmail(email);
	}

	public int imageupdate(GmemberVO vo) {
		return dao.imageupdate(vo);
	}

	public int delete(GmemberVO vo) {
		return dao.delete(vo);
	}
}
