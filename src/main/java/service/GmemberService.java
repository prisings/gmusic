package service;

import java.util.List;

import vo.GmemberVO;

public interface GmemberService {

	public List<GmemberVO> selectList();
	public int insert(GmemberVO vo);
	public int update(GmemberVO vo);
	//추가부분////////////////////////////
	public GmemberVO selectOne(GmemberVO vo);
	public int userIdCheck(String id);
	public int userEmailCheck(String email);
	public int imageupdate(GmemberVO vo);
	public int delete(GmemberVO vo);
	
}
