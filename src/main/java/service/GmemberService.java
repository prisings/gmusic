package service;

import java.util.List;

import vo.GmemberVO;

public interface GmemberService {

	public List<GmemberVO> selectList();
	public int insert(GmemberVO vo);
	
	
}
