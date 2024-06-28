package com.spring5legacy.KRK.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring5legacy.KRK.domain.YourBoardVO;
import com.spring5legacy.KRK.service.YourBoardService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller //스프링 프레임워크에서 컨트롤러 역할을 부여하는 어노테이션.
@Log4j
@RequestMapping("/myboard")  //클래스에 URL 매핑 지정, 메서드의 매핑 패턴의 앞에 자동으로 추가됨
public class YourBoardController {

    private YourBoardService yourBoardService;


    public YourBoardController(YourBoardService yourBoardService) {
        this.yourBoardService = yourBoardService;
    }
	


    //게시물 전체 목록 조회 
    @GetMapping("/list")
    public void showBoardList(Model model) { 
        log.info("컨트롤러 - 게시물 목록 조회.....");
        model.addAttribute("boardList", yourBoardService.getBoardList());
    }

    //게시물 등록 - 페이지 호출 
    @GetMapping("/register")
    public void showBoardRegisterPage() {
        log.info("컨트롤러 - 게시물 등록 페이지 호출");
    }

    //게시물 등록 - 처리
    @PostMapping("/register")
    public String registerNewBoard(YourBoardVO yourBoard, RedirectAttributes redirectAttr) {
        log.info("컨트롤러 - 게시물 등록: " + yourBoard);

        long BNO = yourBoardService.registerBoard(yourBoard);
        log.info("등록된 개시물의 BNO: " + BNO );

        redirectAttr.addFlashAttribute("result", BNO);

        return "redirect:/yourboard/list"; 
    }

  //특정 게시물 조회 페이지 호출: 목록 -> 상세, 수정 후 -> 상세 
    @GetMapping({"/detail"})
    public void showBoardDetail(@RequestParam("BNO") long BNO, String from, Model model) {
        log.info("컨트롤러 - 게시물 조회-수정 페이지 호출: "+ BNO);
        if(from == null) {
            model.addAttribute("yourboard", yourBoardService.getBoard(BNO));
    	   } else {
            model.addAttribute("yourboard", yourBoardService.getBoardModify(BNO));
    	   }
        
        log.info("컨트롤러 - 화면으로 전달할 model: "+ model);
    }


    //특정 게시물 조회 > 수정 페이지 호출(새로추가)
    @GetMapping({"/modify"})
    public void showBoardModify(@RequestParam("BNO") long BNO, Model model) {
        log.info("컨트롤러 - 게시물 수정 페이지 호출: "+ BNO);

        model.addAttribute("yourBoard", yourBoardService.getBoardModify(BNO));
        log.info("컨트롤러 - 화면으로 전달할 model: "+ model);
    }


    //특정 게시물 수정 처리(수정)
    @PostMapping("/modify")
    public String modifyBoard(YourBoardVO yourBoard, RedirectAttributes redirectAttr){ 
        log.info("컨트롤러 - 게시물 수정 전달된 yourBoard 값: " + yourBoard);
        
        if (yourBoardService.modifyBoard(yourBoard)) {
            redirectAttr.addFlashAttribute("result", "successModify");
        } 
        
        return "redirect:/yourboard/detail?bno=" + yourBoard.getBNO() + "&from=m";
    }


    //게시물 블라인드 처리
    @PostMapping("/delete")
    public String setBoardDeleted(@RequestParam("BNO") long BNO, RedirectAttributes redirectAttr){
        log.info("컨트롤러 - 게시물 삭제(bdelFlag값변경 글번호): " + BNO);

        if (yourBoardService.setBoardDeleted(BNO)) {
            redirectAttr.addFlashAttribute("result", "successDeleted");
        }
        return "redirect:/yourboard/list";
        
    }
		
    //게시물 삭제
    @PostMapping("/remove")
    public String removeBoard(@RequestParam("bno") long BNO, RedirectAttributes redirectAttr) {
        log.info("컨트롤러 - 게시물 삭제: 삭제되는 글번호: " + BNO);

        if (yourBoardService.removeBoard(BNO)) {
            redirectAttr.addFlashAttribute("result", "successRemoved");
        }
        return "redirect:/yourboard/list";
    }

}
