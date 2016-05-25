package fr.marketing.quizbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.QuestionDao;

@Service("questionService")
@Transactional
public class QuestionServiceImpl implements QuestionService {
	
//	@Autowired
//	QuestionDao questionDao;

}
