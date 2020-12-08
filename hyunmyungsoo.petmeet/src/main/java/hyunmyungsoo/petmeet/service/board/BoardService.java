package hyunmyungsoo.petmeet.service.board;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import hyunmyungsoo.petmeet.domain.Board;


public interface BoardService {
	List<Board> getBoards();
	
	Board getBoard(int boardNum);
	
	boolean addBoard(Board board);
	boolean fixBoard(Board board);
	boolean delBoard(int boardNum);
	
	//void assignSitter(HttpSession session, String boardTitle, String boardContent, Date regDate, String boardFile);
}

