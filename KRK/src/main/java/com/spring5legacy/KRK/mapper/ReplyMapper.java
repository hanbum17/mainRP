package com.spring5legacy.KRK.mapper;

import java.util.List;

import com.spring5legacy.KRK.domain.ReplyVO;

@org.apache.ibatis.annotations.Mapper
public interface ReplyMapper {

	//댓/답글 목록 조회
	public List<ReplyVO> selectComment(ReplyVO replyVO);
	
	//댓글 작성
	public void insertComment(ReplyVO replyVO);
	
	//답글 작성
	public void insertReply(ReplyVO replyVO);
	
	
	
}
