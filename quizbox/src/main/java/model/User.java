package model;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class User {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String login;
	private String password;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Profile", nullable = false)
	private Profile profile;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Quiz", nullable = false)
	private Quiz quiz;
	
	public User(){

	}

	public void finalize() throws Throwable {

	}

}
