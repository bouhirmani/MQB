package fr.marketing.quizbox.service;

import java.util.List;

import fr.marketing.quizbox.model.Quiz;

public interface QuizService {
	
	Quiz findById(Integer id);
    
    void saveQuiz(Quiz quiz);
     
    void updateQuiz(Quiz quiz);
     
    void deleteQuizById(Integer id);
 
    List<Quiz> findAllQuizs(); 
    
    List<Quiz> findAllDraftQuizs(); 
     
    Quiz findQuizById(Integer id);
 
    boolean isQuizIdUnique(Integer id);
}
