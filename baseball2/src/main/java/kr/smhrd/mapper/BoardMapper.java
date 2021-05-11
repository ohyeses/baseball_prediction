package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.model.BoardVO;


@Mapper
public interface BoardMapper {
	   @Select("select writer, title, content, send_date from board")
	   public List<BoardVO> boardList();
	   public int boardInsert(BoardVO vo);
	   public int boardDelete(int num);
	   public int boardUpdate(BoardVO vo);
	   public BoardVO boardContent(int num);
}