package model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


public class Result {

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "Text", nullable = false, length = 50)
	private String text;
	
	@Column(name = "Photo", nullable = false)
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public byte getPhoto() {
		return photo;
	}

	public void setPhoto(byte photo) {
		this.photo = photo;
	}

	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}

	public Set<ResultCorelation> getResultCorelations() {
		return resultCorelations;
	}

	public void setResultCorelations(Set<ResultCorelation> resultCorelations) {
		this.resultCorelations = resultCorelations;
	}


}
