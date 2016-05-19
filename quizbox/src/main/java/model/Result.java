package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


public class Result {

	private int id;
	private String text;
	private byte photo;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Quiz", nullable = false)
	private Quiz quiz;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "result")
	private Set<ResultCorelation> resultCorelations = new HashSet<ResultCorelation>(0);
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "Id_Output", nullable = false)
//	private Output output;

	public Result(){

	}

	public void finalize() throws Throwable {

	}

}
