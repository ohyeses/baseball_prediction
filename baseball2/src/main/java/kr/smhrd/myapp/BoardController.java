package kr.smhrd.myapp;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.mapper.BoardMapper;
import kr.smhrd.model.BoardVO;



@Controller
public class BoardController {

	
	@Resource(name="boardMapper")
	private BoardMapper dao;	
	
	
	//메인 페이지 접속
	@RequestMapping("/testmain01.do")
	public String board(Model model) {
		
		List<BoardVO> list=dao.boardList();	
		model.addAttribute("list", list);
		
		return "testmain01";
	}
	
	@RequestMapping("/testmain2.do")
	public String testmain2(Model model) {
		
		return "testmain2";
	}
	
	
	//게시물 작성 페이지
	@RequestMapping("/boardRegister.do")
	public String boardRegister() {
		return "boardRegister";
	}
	//게시글 작성
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		dao.boardInsert(vo);
		return "redirect:/testmain01.do#section2";
	}
	//게시물 상세보기
	@RequestMapping("/boardContent.do")
	public String boardContent(int num, Model model) {
		BoardVO vo=dao.boardContent(num);
		model.addAttribute("vo", vo);
		return "boardContent";
	}
	//조회수 상승(목록 돌아가기)
	@RequestMapping("/boardViewCnt.do")
	public String boardViewCnt(int num) {
		dao.boardViewCnt(num);
		return "redirect:/testmain01.do#section2";
	}
	//개인 작성글 보기
	@RequestMapping("/memberMyList.do")
	public String memberMyList(String writer, Model model,HttpServletRequest request) {
		List<BoardVO> list=dao.memberMyList(writer);	
		HttpSession session = request.getSession();
		model.addAttribute("list", list);
		session.setAttribute("page2", "sw");
		return "testmain01";
	}
	//개인글 보기에서 전체글 보기로 전환
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		List<BoardVO> list=dao.boardList();	
		model.addAttribute("list", list);
		return "redirect:/testmain01.do#section2";
	}
	//수정
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		dao.boardUpdate(vo);		
		return "redirect:/testmain01.do#section2";
	}
	//삭제
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int num) {
		dao.boardDelete(num);		
		return "redirect:/testmain01.do#section2";
	}
	
	
	
	
}
