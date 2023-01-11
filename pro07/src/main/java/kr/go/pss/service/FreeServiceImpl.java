package kr.go.pss.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.pss.dao.FreeDAO;
import kr.go.pss.dto.FreeDTO;

@Service
public class FreeServiceImpl implements FreeService{
	@Autowired
	FreeDAO freeDao;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return freeDao.freeList();
	}

	@Override
	public FreeDTO freeDetail(int no) throws Exception {
		return freeDao.freeDetail(no);
	}

	@Override
	public void freeUpdate(FreeDTO free) throws Exception {
		freeDao.freeUpdate(free);
		
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		freeDao.freeInsert(dto);
		
	}

	@Override
	public void freeDelete(int no) throws Exception {
		freeDao.freeDelete(no);
		
	}
	
	

}
