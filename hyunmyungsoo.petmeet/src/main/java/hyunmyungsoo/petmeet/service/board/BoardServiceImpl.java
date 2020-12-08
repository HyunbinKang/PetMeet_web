package hyunmyungsoo.petmeet.service.board;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hyunmyungsoo.petmeet.dao.board.BoardDao;
import hyunmyungsoo.petmeet.domain.Board;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired private BoardDao boardDao;
	
	@Override
	public List<Board> getBoards() {
		return boardDao.selectBoards();
	}

	@Override
	public Board getBoard(int boardNum) {
		return boardDao.selectBoard(boardNum);
	}

	@Override
	public boolean addBoard(Board board) {
		return boardDao.insertBoard(board) > 0;
	}

	@Override
	public boolean fixBoard(Board board) {
		return boardDao.updateBoard(board) > 0;
	}

	@Override
	public boolean delBoard(int boardNum) {
		return boardDao.deleteBoard(boardNum) > 0;
	}
	/*
	@Override
	public void assignSitter(HttpSession session, String boardTitle, String boardContent, Date regDate, String boardFile) {
	      Board board = new Board();
	      
	      String userId = session.getAttribute("userEmail").toString();
	      
	      board.setBoardContent(boardContent);
	      board.setBoardFile(boardFile);
	      board.setBoardTitle(boardTitle);
	      board.setRegDate(regDate);
	      board.setUserId(userId);

	      addBoard(board);

	}*/

}
