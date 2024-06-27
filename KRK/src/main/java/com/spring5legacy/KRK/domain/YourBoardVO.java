package com.spring5legacy.KRK.domain;

import java.sql.Timestamp;
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
public class YourBoardVO {
	private Long BNO ;
	private String BTITLE ;
	private String BCONTENT ;
	private String BWRITER ;
	private Date BREGDATE ;
	private Timestamp BMODDATE ;
	private Integer BVIEWSCNT ;
	private Integer BREPLYCNT ;
	private Integer BDELFLAG ;
	private Long BRECOMMEND ;
	private Long BTYPE ;
	
	
	
	
	
	
}//end class
