package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

public class Output {

	private int id;
	
	
	private int id_result;
	
	
	private int score;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Quiz", nullable = false)
	private Quiz quiz;

	public Output(){

	}

	public void finalize() throws Throwable {

	}

}
