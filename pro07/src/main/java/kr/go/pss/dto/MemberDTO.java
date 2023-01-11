package kr.go.pss.dto;

import lombok.Data;

@Data
public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String tel;
	private String addr;
	private String addr2;
	private String postcode;
	private String regdate;
}
