package fr.marketing.quizbox.dao;

import java.util.List;

import fr.marketing.quizbox.model.Quiz;

public interface QuizDao {
	
	Quiz findById(Integer id);
	 
    void saveQuiz(Quiz quiz);
     
    void deleteQuizById(Integer id);
     
    List<Quiz> findAllQuizs();
 
    Quiz findQuizById(Integer id);

}
