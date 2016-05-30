package fr.marketing.quizbox.controller;



//import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;



@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

	 @RequestMapping(method = RequestMethod.GET)
	    public String getIndexPage(ModelMap model) {
		 	return "index";
	    }
	 
	 
}
