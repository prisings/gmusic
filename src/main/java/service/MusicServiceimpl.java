package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.MusicDAO;
import vo.MusicVO;

@Service
<<<<<<< HEAD
public class MusicServiceimpl implements MusicService {

	@Autowired
	MusicDAO dao;

	public List<MusicVO> selectList() {
		return dao.selectList();
	} // selectList

	public MusicVO selectMusic(MusicVO vo) {
		return dao.selectMusic(vo);
	} // selectOne

=======
public class MusicServiceimpl implements MusicService{
	
  @Autowired 
  MusicDAO dao;

	public List<MusicVO> selectList() {
		return dao.selectList(); 
	} //selectList
	
>>>>>>> refs/remotes/origin/master
}
