package com.spring5legacy.KRK.mapper;

import java.util.List;

import com.spring5legacy.KRK.domain.YourBoardVO;

public interface YourBoardMapper {
    //게시물 조회 - 목록
    public List<YourBoardVO> selectYourBoardList();
	
    //게시물 등록
    public Integer insertMyBoard(YourBoardVO yourBoard);
	
    //게시물 조회 
    public YourBoardVO selectYourBoard(Long BNO);

    //게시물 수정
    public int updateYourBoard(YourBoardVO yourBoard); 
//    public int updateYourBoard(@Param("BNO") Long bno,
//                               	@Param("BTITLE") String btitle,
//                               	@Param("BCONTENT") String bcontent );

    //게시물 블라인드처리
    public int updateBdelFlag(Long BNO);
	
    //게시물 삭제
    public int deleteYourBoard(Long BNO);

    //게시물 조회수 증가
    public void updateBviewsCnt(Long BNO);

	
	
	
}//end interface
