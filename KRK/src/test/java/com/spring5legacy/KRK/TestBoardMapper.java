package com.spring5legacy.KRK;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring5legacy.KRK.mapper.YourBoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
public class TestBoardMapper {

    private YourBoardMapper yourBoardMapper ;
    
    @Autowired
    public void setYourBoardMapper (YourBoardMapper yourBoardMapper) {
        this.yourBoardMapper = yourBoardMapper ;
        System.out.println ("BoardMapper 주입됨");
	    }
    
    

  //게시물 목록 조회 테스트 > 테스트 후 메서드 주석처리
  @Test
  public void testSelectBoardList() {
	  yourBoardMapper.selectYourBoardList().forEach(yourBoard -> System.out.println(yourBoard.toString()));
  }


}//end class
