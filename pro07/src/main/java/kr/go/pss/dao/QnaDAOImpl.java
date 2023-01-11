package kr.go.pss.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.pss.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO{
	@Autowired
	SqlSession session;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return session.selectList("qna.qnaList");
	}

	@Override
	public QnaDTO qnaDetail(int no) throws Exception {
		return session.selectOne("qna.qnaDetail",no);
	}

	@Override
	public void qWrite(QnaDTO qna) throws Exception {
		session.insert("qna.qWrite",qna);
	}

	@Override
	public void aWrite(QnaDTO qna) throws Exception {
		session.insert("qna.aWrite",qna);
	}

	@Override
	public void qnaUpdate(QnaDTO qna) throws Exception {
		session.update("qna.qnaUpdate",qna);
	}

	@Override
	public void qnaDelete(int no) throws Exception {
		session.delete("qna.qnaDelete",no);
	}
	
	

}
