package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.model.MemberVO;

@Mapper
public interface MemberMapper {
	@Select("select * from member")
	   public List<MemberVO> memberList();
	   public int memberInsert(MemberVO vo);
	   public int memberDelete(int num);
	   public int memberUpdate(MemberVO vo);
	   public MemberVO memberContent(int num);
	   public String memberLogin(MemberVO vo);
	   public List<MemberVO> test();
}
