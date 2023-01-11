package kr.go.pss.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.pss.dto.FreeDTO;

@Repository
public class FreeDAOImpl implements FreeDAO{
	@Autowired
	SqlSession session;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return session.selectList("free.freeList");
	}

	@Override
	public FreeDTO freeDetail(int no) throws Exception {
		session.update("free.visitedUp",no);
		return session.selectOne("free.freeDetail",no);
	}

	@Override
	public void freeUpdate(FreeDTO free) throws Exception {
		session.update("free.freeUpdate",free);
		
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		session.insert("free.freeInsert",dto);
		
	}

	@Override
	public void freeDelete(int no) throws Exception {
		session.delete("free.freeDelete",no);
		
	}
	
	
}
