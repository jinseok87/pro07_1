package kr.go.pss.dao;

import java.util.List;

import kr.go.pss.dto.MemberDTO;

public interface MemberDAO {
	public List<MemberDTO> memberList() throws Exception;
	public MemberDTO getMember(String id) throws Exception;
	public void memberInsert(MemberDTO dto) throws Exception;
	public MemberDTO signIn(MemberDTO dto) throws Exception;
	public MemberDTO loginCheck(MemberDTO dto) throws Exception;
	public MemberDTO login(MemberDTO dto) throws Exception;
	public void memberUpdate(MemberDTO dto) throws Exception;
	public void memberDelete(String id) throws Exception;
}
