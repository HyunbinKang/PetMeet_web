package hyunmyungsoo.petmeet.dao.map.board;

import java.util.List;

import hyunmyungsoo.petmeet.domain.Board;


public interface BoardMap {
	List<Board> selectBoards();
	
	Board selectBoard(int boardNum);
	
	int insertBoard(Board board);
	int updateBoard(Board board);
	int deleteBoard(int boardNum);
}
