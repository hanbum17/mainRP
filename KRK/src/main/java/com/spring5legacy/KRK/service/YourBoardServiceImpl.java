package com.spring5legacy.KRK.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring5legacy.KRK.domain.YourBoardVO;
import com.spring5legacy.KRK.mapper.YourBoardMapper;

import lombok.AllArgsConstructor;



@Service
@AllArgsConstructor
public class YourBoardServiceImpl implements YourBoardService{

	private YourBoardMapper yourBoardMapper;
	
		//게시물 목록 조회
		@Override
		public List<YourBoardVO> getBoardList(){
			System.out.println("목록 조회");
			return yourBoardMapper.selectYourBoardList() ;
		}
		
		//게시물 등록 서비스
	  	 @Override
	  	 public Long registerBoard(YourBoardVO yourBoard) {
	      		System.out.println("게시물 등록 메서드에 전달된 VO: " + yourBoard);
	      		yourBoardMapper.insertYourBoard(yourBoard) ;
	      		System.out.println("게시물 등록 후 YourBoardVO: " + yourBoard);
	      		return yourBoard.getBNO();
	   	}

	   	//게시물 조회 서비스: 조회수 증가 고려
	    @Override
	    public YourBoardVO getBoard(Long BNO) {
	      		System.out.println("게시물 조회 메서드에 전달된 BNO: " + BNO);
	      		YourBoardVO yourBoard = yourBoardMapper.selectYourBoard(BNO) ;
	      		yourBoardMapper.updateBviewsCnt(BNO);
	      		return yourBoard;
	    }

		//게시물 수정 서비스
	   	@Override
	   	public boolean modifyBoard(YourBoardVO yourBoard) {
	      		System.out.println("게시물 수정 메서드에 전달된 VO: " + yourBoard);	
			      return yourBoardMapper.updateYourBoard(yourBoard) == 1;
	   	}
	   	
		//게시물 블라인드 처리
		@Override
	  	public boolean setBoardDeleted(Long BNO) {
	      		System.out.println("게시물 블라 처리에 전달된 BNO: " + BNO);
	        return yourBoardMapper.updateBdelFlag(BNO) == 1 ;
	   	}

	   	//게시물 삭제 서비스: 실제 삭제 
	   	@Override
	    public boolean removeBoard(Long BNO) {
	        System.out.println("게시물 삭제전달된 BNO: " + BNO);
	        return yourBoardMapper.deleteYourBoard(BNO) == 1;
	    }

	
	
	
	
	
}//end class
