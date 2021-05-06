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
		
		request.getSession().invalidate(); // 濡쒓렇�븘�썐泥섎━ �옄�룄�쑝濡� �맂�떎.
		
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
	
	// �쉶�썝�씤利앹쿂由�
	@RequestMapping("/memberLogin.do")
	public String memberLogin(MemberVO vo, HttpServletRequest request) {
		
		String name = dao.memberLogin(vo);
		if(name!=null && !"".equals(name)) {
			// �쉶�썝�씤利앹꽦怨� -> �쉶�썝�씤利앹뿉 �꽦怨듯뻽�떎�뒗 �궗�떎�쓣 �듅�젙 硫붾え由�(request, session)�뿉 媛앹껜諛붿씤�뵫�쓣 �빐以��떎.
			//HttpSession session = request.getSession();
			request.getSession().setAttribute("id", vo.getId());
			request.getSession().setAttribute("name", vo.getId());
		}else {
			//HttpSession session = request.getSession();
			request.getSession().setAttribute("id", "");
			request.getSession().setAttribute("name", "");
			request.getSession().setAttribute("msg", "�궗�슜�옄�쓽 �젙蹂닿� �삱諛붾Ⅴ吏� �븡�뒿�땲�떎.");
		}
		
		return "redirect:/memberList.do";
	}
	
	
	@RequestMapping("/memberLogout.do")
	public String memberLogout(HttpServletRequest request) { // 湲곗〈�뿉 �엳�뜕 �꽭�뀡 媛��졇���빞 �븯�땲源�
		
		request.getSession().invalidate();//invalidate -> �꽭�뀡 臾댄슚�솕
		
		return "redirect:/memberList.do";
		
	}
	
	
	@RequestMapping("/test.do")
	public String test(Model model) {
		
		List<MemberVO> list=dao.memberList();	
		model.addAttribute("list", list);
		
		return "test"; // /WEB-INF/views/memberList.jsp <--- ${list}
	}
	
	
	
}
