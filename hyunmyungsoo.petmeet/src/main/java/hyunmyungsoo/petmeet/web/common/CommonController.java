package hyunmyungsoo.petmeet.web.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CommonController {
	
	@GetMapping("/common/mypage")
	public String toMyPage() {
		return "common/mypage";
	}
}