package com.spring5legacy.KRK.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring5legacy.KRK.domain.ReplyVO;
import com.spring5legacy.KRK.service.ReplyService;

@RestController
@RequestMapping(value={"/reply"})
public class ReplyController {

	private ReplyService replyService ;
	
	//답글 댓글 목록 조회 컨트롤러
	@PostMapping(value = "/register/comment" ,
				 consumes = "Type:application/json;charSet=utf-8")
				 //produces = "")
	public ReplyVO registerComment() {
		
	}
	
}
