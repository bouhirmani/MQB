package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.FetchType;
import javax.persistence.OneToMany;

public class Profile {

	private int id;
	private String name;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "profile")
	private Set<User> users = new HashSet<User>(0);

	public Profile(){

	}

	public void finalize() throws Throwable {

	}

}