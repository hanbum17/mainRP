package com.spring5legacy.KRK.service;

import java.util.List;

import com.spring5legacy.KRK.domain.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> viewReplyList (ReplyVO replyVO);
	
	public void registerComment(ReplyVO replyVO);
	
	public void registerReply(ReplyVO replyVO);
	
}
