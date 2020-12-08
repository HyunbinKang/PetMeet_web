package hyunmyungsoo.petmeet.web.admin.common;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class AdminCommonController {
	@Value("img")
	private String attachDir;
	
	@GetMapping("/admin/common/image")
	public String toImage() {
		return "admin/common/image";
	}
	
	@PostMapping("/admin/common/image")
	public String attach(String title, @RequestParam MultipartFile attachFile,
							Model model, HttpServletRequest request) {
		String dir = request.getServletContext().getRealPath(attachDir);
		
		String fileName = attachFile.getOriginalFilename();
		save(dir + "/" + fileName, attachFile);
		
		return "redirect:../main";
	}
	
	private void save(String fileName, MultipartFile attachFile) {
		try {
			attachFile.transferTo(new File(fileName));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
}