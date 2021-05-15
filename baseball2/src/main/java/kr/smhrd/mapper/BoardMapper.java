package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.model.BoardVO;


@Mapper
public interface BoardMapper {
		//전체 목록
		@Select("select num, writer, cnt, title, content, send_date from board order by num desc")
		public List<BoardVO> boardList();
		//게시글 작성
		public int boardInsert(BoardVO vo);
		//상세보기 페이지
		public BoardVO boardContent(int num);
		//조회수 증가
		public void boardViewCnt(int num);
		//개인목차
		public List<BoardVO> memberMyList(String writer);
		//수정
		public int boardUpdate(BoardVO vo);
		//삭제
		public int boardDelete(int num);

		
}
