package fr.marketing.quizbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.marketing.quizbox.dao.ChoiceDao;
import fr.marketing.quizbox.dao.ResultDao;

@Service("resultService")
@Transactional
public class ResultServiceImpl implements ResultService{

	
//	@Autowired
//	ResultDao resultDao;
}
