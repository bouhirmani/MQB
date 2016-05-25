package fr.marketing.quizbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.marketing.quizbox.dao.ChoiceDao;

@Service("choiceService")
@Transactional
public class ChoiceServiceImpl implements ChoiceService {
	
	@Autowired
	ChoiceDao choiceDao;

}
