package fr.marketing.quizbox.controller;

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
public class QuizController {
	@Autowired
	QuizService service;
	

	@RequestMapping(value = { "/form/configuration"}, method = RequestMethod.POST)
	public String newQuiz( Quiz quiz, ModelMap model) {
		//service.saveQuiz(quiz);
		return "redirect:/form/contenu";
	}
	
	 
}
