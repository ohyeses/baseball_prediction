package kr.smhrd.myapp;
/*
  /memberList.do   -> MemberListController
  /memberInsert.do -> MemberInsertController 
        |                      |  
  /memberList.do   -> MemberController -> Method Mapping
  /memberInsert.do -> MemberController -> Method Mapping
*
*/


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {

	@Resource(name="memberMapper")
	private MemberMapper dao;	
	
	
	//메인 페이지 접속
	@RequestMapping("/testmain01.do")
	public String testmain() {
		return "testmain01";
	}
	//회원가입
	@RequestMapping("/memberInsert.do")
	public String memberInsert(MemberVO vo) {
		dao.memberInsert(vo);
		return "testmain01";
	}
	//중복확인
	@RequestMapping("/idcheck.do")
		@ResponseBody
		public Map<Object, Object> idcheck(@RequestBody String userid) {
			int cnt = 0;
			Map<Object, Object> map = new HashMap<Object, Object>();
			cnt = dao.idcheck(userid);
			map.put("cnt", cnt);
			
			return map;
		}
	//로그인
	@RequestMapping("/memberLogin.do")
	public String memberLogin(MemberVO vo, HttpServletRequest request) {
		
		String name = dao.memberLogin(vo);
		HttpSession session = request.getSession();
		if(name!=null && !"".equals(name)) {
			//회원인증 성공
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", name);
		}else {
			//실패
			session.setAttribute("id", "");
			session.setAttribute("name", "");
			session.setAttribute("msg", "사용자 정보가 올바르지 않습니다");
		}
		
		return "testmain01";
	}
	
	//로그아웃
	@RequestMapping("/memberLogout.do")
	public String memberLogout(HttpServletRequest request) {
		//세션 정의 없이 쓰는법
		request.getSession().invalidate(); //세션 무효화
		
		return "redirect:/testmain01.do";
	}
	
	//회원 정보 수정 페이지
	@RequestMapping("/memberContent.do")
	public String memberContent(String id, Model model) {
		MemberVO vo = dao.memberContent(id);
		model.addAttribute("vo", vo);
		return "memberContent";
	}
	//회원 정보 수정
	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(MemberVO vo) {
		dao.memberUpdate(vo);
		return "redirect:/testmain01.do";
	}
	//회원 탈퇴
	@RequestMapping("/memberDelete.do")
	public String memberDelete(MemberVO vo, HttpServletRequest request) {
		dao.memberDelete(vo);
		request.getSession().invalidate();
		return "redirect:/testmain01.do";
	}
	
}
