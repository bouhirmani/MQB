package fr.marketing.quizbox.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.QuizDao;
import fr.marketing.quizbox.model.Quiz;

@Service("quizService")
@Transactional
public class QuizServiceImpl implements QuizService {
 
    @Autowired
    private QuizDao dao;
     
    public QuizDao getDao() {
		return dao;
	}

	public void setDao(QuizDao dao) {
		this.dao = dao;
	}

	public Quiz findById(Integer id) {
        return dao.findById(id);
    }
 
    public void saveQuiz(Quiz quiz) {
        dao.saveQuiz(quiz);
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateQuiz(Quiz quiz) {
        Quiz entity = dao.findById(quiz.getId());
        if(entity!=null){
            entity.setTitle(quiz.getTitle());
            entity.setDescription(quiz.getDescription());
            entity.setCoverPhoto(quiz.getCoverPhoto());
            entity.setFontType(quiz.getFontType());
            entity.setId(quiz.getId());
        }
    }
 
    public void deleteQuizById(Integer id) {
        dao.deleteQuizById(id);
    }
     
    public List<Quiz> findAllQuizs() {
        return dao.findAllQuizs();
    }
 
    public Quiz findQuizById(Integer id) {
        return dao.findQuizById(id);
    }
 
    public boolean isQuizIdUnique(Integer id) {
        Quiz quiz = findQuizById(id);
        return ( quiz == null || ((id != null) && (quiz.getId() == id)));
    }
     
}