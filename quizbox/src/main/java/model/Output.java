package model;

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
@Table(name = "output")
public class Output implements Serializable{

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "Id_Result", nullable = false)
	private int id_result;
	
	@Column(name = "Score", nullable = false)
	private int score;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Quiz", nullable = false)
	private Quiz quiz;

	public Output(){

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getId_result() {
		return id_result;
	}

	public void setId_result(int id_result) {
		this.id_result = id_result;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}


}
