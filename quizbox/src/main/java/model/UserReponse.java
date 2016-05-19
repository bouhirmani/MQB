package model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_response")
public class UserReponse implements Serializable {

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