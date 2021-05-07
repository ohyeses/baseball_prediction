package kr.board.myboard;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.mapper.BoardMapper;
import kr.board.model.BoardVO;

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
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int num) {
		dao.boardDelete(num);		
		return "redirect:/boardList.do";
	}
	
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		dao.boardUpdate(vo);		
		return "redirect:/boardList.do";
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
	
	
}
