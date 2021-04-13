package service;

import java.util.List;

import criteria.Criteria;
import vo.MusicVO;
import vo.PageVO;

public interface ChartService {

	public List<MusicVO> searchPList(Criteria cri);

}
