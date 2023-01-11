package kr.go.pss.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.go.pss.dao.MemberDAO;
import kr.go.pss.dto.MemberDTO;

@Service
public class MemberSerivceImpl implements MemberService{
	@Autowired
	MemberDAO memberDao;

	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	//�쉶�썝紐⑸줉
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	//�쉶�썝�젙蹂� 議고쉶
	@Override
	public MemberDTO getMember(String id) throws Exception {	
		return memberDao.getMember(id);
	}

	//�쉶�썝媛��엯
	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDao.memberInsert(dto);
	}
	
	//而⑦듃濡ㅻ윭�뿉�꽌 濡쒓렇�씤 泥섎━
	@Override
	public MemberDTO signIn(MemberDTO dto) throws Exception {
		return memberDao.signIn(dto);
	}
	
	//�꽌鍮꾩뒪�뿉�꽌 濡쒓렇�씤 泥섎━
	@Override
	public boolean login(HttpServletRequest request) throws Exception {	
		HttpSession session = request.getSession();
		boolean loginSuccess = false;
		MemberDTO dto = new MemberDTO();
		
		dto.setId(request.getParameter("id"));
		dto.setPw(request.getParameter("pw"));
		
		MemberDTO login = memberDao.login(dto);
		
		loginSuccess =  pwdEncoder.matches(dto.getPw(), login.getPw());
		if(login != null && loginSuccess==true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getId());
			loginSuccess = true;
		}
		return loginSuccess;
	}
	
	@Override
	public MemberDTO loginCheck(MemberDTO dto) throws Exception {
		return memberDao.loginCheck(dto);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		memberDao.memberUpdate(dto);
	}

	@Override
	public void memberDelete(String id) throws Exception {
		memberDao.memberDelete(id);
	}

}
