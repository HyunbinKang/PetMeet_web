package hyunmyungsoo.petmeet.dao.board;

import java.util.List;

import hyunmyungsoo.petmeet.domain.Board;

public interface BoardDao {
	List<Board> selectBoards();
	
	Board selectBoard(int boardNum);
	
	int insertBoard(Board board);
	int updateBoard(Board board);
	int deleteBoard(int boardNum);
}

