package kr.go.pss.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.go.pss.dto.MemberDTO;
@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession sqlSession;
	
	//회원 목록
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return sqlSession.selectList("member.memberList");
	}

	//회원 정보 보기
	@Override
	public MemberDTO getMember(String id) throws Exception {
		return sqlSession.selectOne("member.getMember", id);
	}

	//회원 가입
	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		sqlSession.insert("member.memberInsert", dto);
	}

	//로그인 - 컨트롤러에서 세션 처리
	@Override
	public MemberDTO signIn(MemberDTO dto) throws Exception {
		return sqlSession.selectOne("member.signIn", dto);
	}
	
	//로그인 - 서비스에서 처리
	@Override
	public MemberDTO loginCheck(MemberDTO dto) throws Exception {
		dto = sqlSession.selectOne("member.loginCheck", dto);
		return dto;
	}
	
	//Ajax로 로그인
	@Override
	public MemberDTO login(MemberDTO dto) throws Exception {
		return sqlSession.selectOne("member.login", dto);
	}
	
	//회원 정보 변경
	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		sqlSession.update("member.memberUpdate", dto);
	}

	//회원 탈퇴
	@Override
	public void memberDelete(String id) throws Exception {
		sqlSession.delete("member.memberDelete", id);
	}
}