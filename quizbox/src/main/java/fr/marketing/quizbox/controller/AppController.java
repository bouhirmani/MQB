package fr.marketing.quizbox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import fr.marketing.quizbox.model.Quiz;

@Controller
@RequestMapping("/")
public class AppController {

	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		return "home";
	}
	
	@RequestMapping(value = { "/choice"}, method = RequestMethod.GET)
	public String choicePage(ModelMap model) {
		return "choice";
	}
	
	@RequestMapping(value = { "/form"}, method = RequestMethod.GET)
	public String formPage(ModelMap model) {
		return "form";
	}
	
	@RequestMapping(value = { "/form/configuration"}, method = RequestMethod.GET)
	public String formConfigurationPage(ModelMap model) {
		Quiz quiz = new Quiz();
        model.addAttribute("quiz", quiz);
		return "configuration";
	}
	@RequestMapping(value = { "/form/contenu"}, method = RequestMethod.GET)
	public String formContenuPage(ModelMap model) {
		return "contenu";
	}
	
	 
}
