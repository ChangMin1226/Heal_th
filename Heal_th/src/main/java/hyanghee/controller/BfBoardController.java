package hyanghee.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import hyanghee.dto.Beforeafter;
import hyanghee.service.face.BfBoardService;
import hyanghee.util.BoardPageMaker;
import hyanghee.util.BoardSearch;
import jucheol.dto.Comment;
import jucheol.dto.Fileupload;
import jucheol.service.face.FileuploadService;
import saebyeol.dto.Notice;
import yerim.dto.Users;


@Controller
public class BfBoardController {

	//로그 객체
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
			
	//서비스 객체
	@Autowired private BfBoardService bfBoardService;
	
	//첨부 파일
	@Autowired private FileuploadService fileuploadService; 
	
	@RequestMapping("/board/bfBoard")
	public void list(BoardSearch boardSearch, HttpSession session, Model model) {
		
		//공지사항
		List<Notice> notice = bfBoardService.notice(boardSearch);
		for( Notice n : notice )	logger.info("{}", n);
		model.addAttribute("notice", notice);
		
		//검색
		List<Beforeafter> list = bfBoardService.getSearchPaging(boardSearch);
		
		model.addAttribute("boardSearch", list);
		int total = bfBoardService.getTotal(boardSearch);
		
		//게시글 목록 첨부파일
		List<Map<String,Object>> fileMapList = new ArrayList<>();
		for( Beforeafter b : list ) {
			logger.info("{}", b);
			
			Map<String,Object> fileMap = new HashMap<>();

			fileMap.put("bfNo", b.getBfNo());
			
			Fileupload f = new Fileupload();
			f.setBoardNo(b.getBfNo());
			f.setCategoryNo(1);
			fileMap.put("fileList", fileuploadService.getFileList(f));
			
			fileMapList.add(fileMap);
		}
		model.addAttribute("fileMapList", fileMapList);
		
		BoardPageMaker pageMake = new BoardPageMaker(boardSearch, total);
		logger.info("{}", pageMake);
		model.addAttribute("pageMaker", pageMake);
		
	}
	
	
	//게시글 작성
	@GetMapping("/board/bfWrite")
	public String insertBfBoard(HttpSession session, Model model) {
		logger.info("/board/bfWrite [GET]");
		
		if(session.getAttribute("userNo")!=null && session.getAttribute("userNo")!="") {
			int userno = (int) session.getAttribute("userNo");
			logger.info("userno : {}", userno);
			
			Users users = bfBoardService.getUserInfo(userno);
			logger.info("userInfo : {}", users);
			model.addAttribute("users", users);
			
			int point = bfBoardService.getPoint(userno);
			logger.info("point: {}", point);
			model.addAttribute("point", point);
			
			return "/board/bfWrite";
		} else {
			return "/login/login";
		}

	}
	
	@PostMapping("/board/bfWrite")
	public String insertBfBoardProc(Beforeafter bfBoard, HttpSession session
			, List<MultipartFile> multiFile
			) {
		logger.info("/board/bfWrite [POST]");
		logger.info("file/write[POST]");
		
		//테스트용 로그인 userno
//		session.setAttribute("userNo", 7777);
		
		//작성자 정보 추가
		bfBoard.setUserNo( (int) session.getAttribute("userNo") );
		
		logger.info("{}", bfBoard);
		
		bfBoardService.insertBfBoard(bfBoard);
		
		 int boardNo = bfBoard.getBfNo(); //----------------1 대신 해당게시판 글번호 넣어주세여 ex) bfBoard.getBfNo()
	     int categoryNo = 1;//----------------카테고리번호 넣어주세여~
	     fileuploadService.insertFile(multiFile, boardNo, categoryNo);
		
		
		int point = (Integer)session.getAttribute("userNo");
		bfBoardService.updatePoint(point);
		
		
		
		return "redirect:/board/bfBoard";
	}
	
	
	
	//게시글 상세 보기
	@RequestMapping("board/bfView")
	public String view(Beforeafter viewBoard, HttpSession session, Comment comment, Model model) {
		logger.info("{}", viewBoard);
		
		//잘못된 게시글 번호 처리
		if( viewBoard.getBfNo() < 0 ) {
			return "redirect:/board/bfBoard";
		}
		
		//게시글 조회
		viewBoard = bfBoardService.view(viewBoard);
		logger.info("조회된 게시글 {}", viewBoard);
		
		//모델값 전달
		model.addAttribute("viewBoard", viewBoard);
		model.addAttribute("comment", comment);
		model.addAttribute("boardNo", viewBoard.getBfNo());
		
		return "/board/bfView";
	}

	//게시글 수정
	@GetMapping("/board/bfUpdate")
	public String update(Beforeafter beforeafter, HttpSession session, Model model) {
		logger.debug("{}", beforeafter);
			
			//잘못된 게시글 번호 처리
			if( beforeafter.getBfNo() < 0 ) {
				return "redirect:/board/bfBoard";
			}
			
			//게시글 조회
			beforeafter = bfBoardService.view(beforeafter);
			logger.debug("조회된 게시글 {}", beforeafter);
			
			int boardNo = beforeafter.getBfNo(); //----------------1 대신 해당게시판 글번호 넣어주세여 ex) bfBoard.getBfNo()
	        int categoryNo = 1;//----------------카테고리번호 넣어주세여~
	        model.addAttribute("boardNo", boardNo);
	        model.addAttribute("categoryNo", categoryNo);
			
			//모델값 전달
			model.addAttribute("updateBoard", beforeafter);
			
		
			return "/board/bfUpdate";

	}
	

	
	@PostMapping("/board/bfUpdate")
	public String updateProcess(Beforeafter beforeafter, HttpSession session, Model model
			, List<MultipartFile> multiFile) {
		logger.debug("{}", beforeafter);
		
		int boardNo = beforeafter.getBfNo();
		int categoryNo = 1;
		fileuploadService.updateFile(multiFile,boardNo,categoryNo);
		
		model.addAttribute("boardNo", boardNo);
	    model.addAttribute("categoryNo", categoryNo);
		
		bfBoardService.update(beforeafter);
		
		return "redirect:/board/bfView?bfNo=" + beforeafter.getBfNo();
	}
	
 
	
	//게시글 삭제
	@RequestMapping("/board/bfDelete")
	public String delete(Beforeafter bfNo, HttpSession session) {
		
		logger.info("{}", bfNo);
		
		bfBoardService.delete(bfNo);
		
		
		return "redirect:/board/bfBoard";
	}
	
	
	
	
	
}







