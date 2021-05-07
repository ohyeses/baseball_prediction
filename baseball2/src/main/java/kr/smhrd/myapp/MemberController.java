package kr.smhrd.myapp;
/*
  /memberList.do   -> MemberListController
  /memberInsert.do -> MemberInsertController 
        |                      |  
  /memberList.do   -> MemberController -> Method Mapping
  /memberInsert.do -> MemberController -> Method Mapping
*
*/

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {

	@Resource(name="memberMapper")
	private MemberMapper dao;	
	// HandlerMapping(X)
	@RequestMapping("/memberList.do")
	public String memberList(Model model) {
		
		List<MemberVO> list=dao.memberList();	
		model.addAttribute("list", list);
		
		return "memberList"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		dao.memberInsert(vo);	
		return "redirect:/memberList.do";
	}
	
	@RequestMapping("/memberDelete.do")
	public String memberDelete(int num, HttpServletRequest request) {
		dao.memberDelete(num);		
		
		request.getSession().invalidate(); // 로그아웃처리 자도으로 된다.
		
		return "redirect:/memberList.do";
	}
	
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		dao.memberUpdate(vo);		
		return "redirect:/memberList.do";
	}
	
	@RequestMapping("/memberContent.do")
	public String memberContent(int num, Model model) {
		MemberVO vo=dao.memberContent(num);
		model.addAttribute("vo", vo);
		return "memberContent";
	}
	
	@RequestMapping("/memberRegister.do")
	public String memberRegister() {
				
		return "memberRegister";
	}
	
	// 회원인증처리
	@RequestMapping("/memberLogin.do")
	public String memberLogin(MemberVO vo, HttpServletRequest request) {
		
		String name = dao.memberLogin(vo);
		if(name!=null && !"".equals(name)) {
			// 회원인증성공 -> 회원인증에 성공했다는 사실을 특정 메모리(request, session)에 객체바인딩을 해준다.
			//HttpSession session = request.getSession();
			request.getSession().setAttribute("id", vo.getId());
			request.getSession().setAttribute("name", vo.getId());
		}else {
			//HttpSession session = request.getSession();
			request.getSession().setAttribute("id", "");
			request.getSession().setAttribute("name", "");
			request.getSession().setAttribute("msg", "사용자의 정보가 올바르지 않습니다.");
		}
		
		return "redirect:/memberList.do";
	}
	
	
	@RequestMapping("/memberLogout.do")
	public String memberLogout(HttpServletRequest request) { // 기존에 있던 세션 가져와야 하니까
		
		request.getSession().invalidate();//invalidate -> 세션 무효화
		
		return "redirect:/memberList.do";
		
	}
	
	@RequestMapping("/test.do")
	public String test(Model model) {
		
		List<MemberVO> list=dao.memberList();	
		model.addAttribute("list", list);
		
		return "test"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	@RequestMapping("/test2.do")
	public String test2(Model model) {
		
		List<MemberVO> list=dao.memberList();	
		model.addAttribute("list", list);
		
		return "test2"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	
}
