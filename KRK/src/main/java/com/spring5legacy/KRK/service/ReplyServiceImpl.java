package com.spring5legacy.KRK.service;

import java.util.List;

import com.spring5legacy.KRK.domain.ReplyVO;
import com.spring5legacy.KRK.mapper.ReplyMapper;


public class ReplyServiceImpl implements ReplyService{

	private ReplyMapper ReplyMapper ;
	
	//댓글/답글 목록 조회
	@Override
	public List<ReplyVO> viewReplyList (ReplyVO replyVO){
		
		List<ReplyVO> replyList = ReplyMapper.selectComment(replyVO) ;
		
		return replyList ; 
		
	}
	
	//댓글(comment) 등록
	@Override
	public void registerComment (ReplyVO replyVO) {
		
		ReplyMapper.insertComment(replyVO);
	
	}

	//답글(reply) 등록
	@Override
	public void registerReply (ReplyVO replyVO) {
		
		ReplyMapper.insertReply(replyVO);
		
	}
	
}
