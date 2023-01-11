package kr.go.pss.dto;

import lombok.Data;

@Data
public class QnaDTO {
	private int no;
	private String title;
	private String content;
	private String author;
	private String regdate;
	private int lev;
	private int parno;
	private String sec;
	private int visited;
}
