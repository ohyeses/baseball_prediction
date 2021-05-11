package kr.smhrd.mapper;


import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.model.MemberVO;

@Mapper
public interface MemberMapper {
		//회원가입
		public int memberInsert(MemberVO vo);
		//중복확인
		public int idcheck(String userid);
		//로그인
		public String memberLogin(MemberVO vo);
		//회원정보페이지
		public MemberVO memberContent(String id);
		//회원 정보 수정
		public int memberUpdate(MemberVO vo);
		//회원 탈퇴
		public int memberDelete(MemberVO vo);
		
}
