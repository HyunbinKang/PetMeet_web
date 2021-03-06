package hyunmyungsoo.petmeet.dao.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hyunmyungsoo.petmeet.dao.map.board.BoardMap;
import hyunmyungsoo.petmeet.domain.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired private BoardMap mapper;

	@Override
	public List<Board> selectBoards() {
		return mapper.selectBoards();
	}

	@Override
	public Board selectBoard(int boardNum) {
		return mapper.selectBoard(boardNum);
	}

	@Override
	public int insertBoard(Board board) {
		return mapper.insertBoard(board);
	}

	@Override
	public int updateBoard(Board board) {
		return mapper.updateBoard(board);
	}

	@Override
	public int deleteBoard(int boardNum) {
		return mapper.deleteBoard(boardNum);
	}
}

