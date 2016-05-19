package fr.marketing.quizbox.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "choice")
public class Choice implements Serializable {

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "Text", nullable = false, length = 50)
	private String text;
	
	@Column(name = "Photo", nullable = false)
	private byte photo;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Question", nullable = false)
	private Question question;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "choice")
	private Set<ResultCorelation> resultCorelations = new HashSet<ResultCorelation>(0);
	

	public Choice(){

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


	public Question getQuestion() {
		return question;
	}


	public void setQuestion(Question question) {
		this.question = question;
	}


	public Set<ResultCorelation> getResultCorelations() {
		return resultCorelations;
	}


	public void setResultCorelations(Set<ResultCorelation> resultCorelations) {
		this.resultCorelations = resultCorelations;
	}


}
