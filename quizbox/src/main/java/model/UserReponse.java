package model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class UserReponse {

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	private int id_question;
	private int id_choice;

	public UserReponse(){

	}

	public void finalize() throws Throwable {

	}

}