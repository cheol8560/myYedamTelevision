package yolo.myTv.main;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome main! The client locale is {}.", locale);
		
		return "redirect:/getOnBroadcastList.do";
	}
	
	@RequestMapping("/adminIndex.do")
	public String adminMain(Locale locale, Model model){
		return "admin/main/adminIndex";
	}

	
}
