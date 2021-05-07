package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.board.model.BoardVO;

@Mapper
public interface BoardMapper {
	   @Select("select idx, title, count, writer, indate from tb_board")
	   public List<BoardVO> boardList();
	   public int boardInsert(BoardVO vo);
	   public int boardDelete(int num);
	   public int boardUpdate(BoardVO vo);
	   public BoardVO boardContent(int num);
}
