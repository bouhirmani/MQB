package fr.marketing.quizbox.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import fr.marketing.quizbox.model.Quiz;
import fr.marketing.quizbox.service.QuizService;

@Controller
@RequestMapping("/")
public class AppController {
	@Autowired
	QuizService service;

	@RequestMapping(value = {"/"}, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		List<Quiz> quizs = service.findAllQuizs();
        model.addAttribute("quizs", quizs);
        
        List<Quiz> draftQuizs = service.findAllDraftQuizs();
        model.addAttribute("draftQuizs", draftQuizs);
		return "home";
	}
	
	@RequestMapping(value = { "/choice"}, method = RequestMethod.GET)
	public String choicePage(ModelMap model) {
		return "choice";
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
