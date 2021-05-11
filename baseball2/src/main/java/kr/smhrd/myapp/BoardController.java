package kr.smhrd.myapp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;



@Controller
public class BoardController {

	
	@Resource(name="boardMapper")
	private BoardMapper dao;	
	
	// 게시판관리 컨트롤러
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		List<BoardVO> list=dao.boardList();	
		model.addAttribute("list", list);
		
		return "boardList"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	// new
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		dao.boardInsert(vo);	
		return "redirect:/board.do";
	}
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int num) {
		dao.boardDelete(num);		
		return "redirect:/board.do";
	}
	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		dao.boardUpdate(vo);		
		return "redirect:/board.do";
	}
	
	@RequestMapping("/boardContent.do")
	public String boardContent(int num, Model model) {
		BoardVO vo=dao.boardContent(num);
		model.addAttribute("vo", vo);
		return "boardContent";
	}
	
	@RequestMapping("/boardRegister.do")
	public String boardRegister() {
				
		return "boardRegister";
	}
	
	@RequestMapping("/test2.do")
	public String test2(Model model) {
		
		/*
		 * List<MemberVO> list=dao.memberList(); model.addAttribute("list", list);
		 */
		/* 이것때매 안됐음 Board면 BoardList 가져오기*/
		
		List<BoardVO> list=dao.boardList();	
		model.addAttribute("list", list);
		
		return "test2"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	//메인 페이지 접속
	@RequestMapping("/testmain01.do")
	public String board(Model model) {
		
		/*
		 * List<MemberVO> list=dao.memberList(); model.addAttribute("list", list);
		 */
		/* 이것때매 안됐음 Board면 BoardList 가져오기*/
		
		List<BoardVO> list=dao.boardList();	
		model.addAttribute("list", list);
		
		return "testmain01"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	
}
