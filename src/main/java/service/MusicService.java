package service;

import java.util.List;

import criteria.Criteria;
import vo.MusicVO;
import vo.MyListVO;

public interface MusicService {

	public List<MusicVO> selectList();

	public MusicVO selectOne(MusicVO vo);

	public void musicCount(MusicVO vo);

	public List<MusicVO> musicList(Criteria cri);

	public int totalRowCount();

	public List<MusicVO> releasedateList(Criteria cri);

	public int releasedateRowCount();

	public List<MusicVO> genreList(Criteria cri);

	public int genreRowCount(MusicVO vo); // 해당장르의 곡 수 찾기

	// 검색 페이징 부분 추가
	// ** SearchCriteria PageList
	public int searchRowCountSname(Criteria cri);

	// 추가 수정 삭제
	public int insert(MusicVO vo);

	public int update(MusicVO vo);

	public int delete(MusicVO vo);

//	// ** Criteria PageList
	public List<MusicVO> searchSnameList(Criteria cri);

	public List<MusicVO> cartlist(String id);

	public MusicVO cartselectOne(MusicVO vo);

	public int myListInsert(MyListVO vo);


}// interface
