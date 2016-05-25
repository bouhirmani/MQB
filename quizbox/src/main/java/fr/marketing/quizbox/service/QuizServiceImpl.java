package fr.marketing.quizbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.QuizDao;

@Service("quizService")
@Transactional
public class QuizServiceImpl implements QuizService {

//	@Autowired
//	QuizDao quizDao;
}
