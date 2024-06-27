package com.spring5legacy.KRK;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring5legacy.KRK.domain.ReplyVO;
import com.spring5legacy.KRK.service.ReplyService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/mybatis-context.xml")
@Log4j
public class Test01JdbcConnectionTest {
	
    private ReplyService replyService;
    private ReplyVO replyVO ;
    
    @Autowired
    public void setDataSource (ReplyService replyService) {
    	this.replyService = replyService ;
    }

    @Test
    public void testConnection() {
    
    	replyService.viewReplyList(replyVO);
    	
    }
}
