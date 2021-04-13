package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import criteria.Criteria;
import util.ChartDAO;
import vo.MusicVO;
import vo.PageVO;

@Service
public class ChartServiceImpl implements ChartService {

	@Autowired
	ChartDAO dao;
	
	public List<MusicVO> searchPList(Criteria cri) {
		return dao.searchPList(cri);
	}

}
