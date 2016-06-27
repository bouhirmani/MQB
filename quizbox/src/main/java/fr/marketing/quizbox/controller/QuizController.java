package fr.marketing.quizbox.controller;


import java.io.IOException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import fr.marketing.quizbox.model.Quiz;
import fr.marketing.quizbox.service.QuizService;
import sun.misc.BASE64Decoder;

@Controller
@RequestMapping("/")
public class QuizController {
	@Autowired
	QuizService service;
	

	@RequestMapping(value = { "/form/configuration"}, method = RequestMethod.POST)
	public String newQuiz(@ModelAttribute("quiz") Quiz quiz, @RequestParam("quizPhoto64") String quizPhoto64,
			@RequestParam("logoPhoto64") String logoPhoto64){
		
			try {
				BASE64Decoder decoderQuizPhoto = new BASE64Decoder();
				byte[] decodedBytesQuiz = decoderQuizPhoto.decodeBuffer(quizPhoto64);
				quiz.setCoverPhoto(decodedBytesQuiz);

				BASE64Decoder decoderLogoPhoto = new BASE64Decoder();
				byte[] decodedBytesLogo = decoderLogoPhoto.decodeBuffer(logoPhoto64);
				quiz.setCoverPhoto(decodedBytesLogo);
				
			
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		service.saveQuiz(quiz);
		return "redirect:/form/contenu";
	}
}
