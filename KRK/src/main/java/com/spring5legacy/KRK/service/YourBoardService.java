package com.spring5legacy.KRK.service;

import java.util.List;

import com.spring5legacy.KRK.domain.YourBoardVO;

public interface YourBoardService {

	//게시물 목록
	public List<YourBoardVO> getBoardList();
	
	//게시물 등록
	public Long registerBoard(YourBoardVO yourBoard);
	
	//게시물 조회1
	public YourBoardVO getBoard(Long BNO);
	
	//게시물 조회2
	public YourBoardVO getBoardModify(Long BNO);
    
    //게시물 수정
    public boolean modifyBoard(YourBoardVO yourBoard);
    
    //게시물 블라인드 처리
    public boolean setBoardDeleted(Long BNO);
    
    //게시물 삭제
    public boolean removeBoard(Long BNO);

	
	
	
}//end interface
