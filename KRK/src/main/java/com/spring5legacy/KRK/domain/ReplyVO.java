package com.spring5legacy.KRK.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ReplyVO {

	private Long rno ;
	private String rcontent ;
	private String rwriter ;
	private Date rregDate ;
	private Date rmodDate ;
	private Long bno ;
	private Long prno ;
	private Long rdelFlag ;
	private Long replyCnt ;
	
}
