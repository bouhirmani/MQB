package fr.marketing.quizbox.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import fr.marketing.quizbox.model.Quiz;
@Repository("quizDao")
public class QuizDaoImpl extends AbstractDao<Integer, Quiz> implements QuizDao {
 
    public Quiz findById(Integer id) {
        return getByKey(id);
    }
 
    public void saveQuiz(Quiz quiz) {
    	quiz.setDraft(1);
        persist(quiz);
    }
 
    public void deleteQuizById(Integer id) {
        Query query = getSession().createSQLQuery("delete from Quiz where id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
    }
 
    @SuppressWarnings("unchecked")
    public List<Quiz> findAllQuizs() {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("draft", 0));
        return (List<Quiz>) criteria.list();
    }
    
    @SuppressWarnings("unchecked")
    public List<Quiz> findAllDraftQuizs() {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("draft", 1));
        return (List<Quiz>) criteria.list();
    }
 
    public Quiz findQuizById(Integer id) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("id", id));
        return (Quiz) criteria.uniqueResult();
    }
}