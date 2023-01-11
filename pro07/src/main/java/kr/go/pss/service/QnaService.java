package kr.go.pss.service;

import java.util.List;

import kr.go.pss.dto.QnaDTO;

public interface QnaService {
	public List<QnaDTO> qnaList() throws Exception;
	public QnaDTO qnaDetail(int no) throws Exception;
	public void qWrite(QnaDTO qna) throws Exception;
	public void aWrite(QnaDTO qna) throws Exception;
	public void qnaUpdate(QnaDTO qna) throws Exception;
	public void qnaDelete(int no) throws Exception;
}
