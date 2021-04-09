package service;

import java.util.List;

import vo.MusicVO;

public interface MusicService {

	public List<MusicVO> selectList();
	public MusicVO selectMusic(MusicVO vo);
	
	
}// interface
