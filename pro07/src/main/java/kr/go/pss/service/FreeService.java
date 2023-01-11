package kr.go.pss.service;

import java.util.List;

import kr.go.pss.dto.FreeDTO;

public interface FreeService {
	public List<FreeDTO> freeList() throws Exception;
	public FreeDTO freeDetail(int no) throws Exception;
	public void freeUpdate(FreeDTO free) throws Exception;
	public void freeInsert(FreeDTO dto) throws Exception;
	public void freeDelete(int no) throws Exception;
}
