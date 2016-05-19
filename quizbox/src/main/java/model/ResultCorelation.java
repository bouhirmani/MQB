package model;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "result_correlation")
public class ResultCorelation implements Serializable {

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Choice", nullable = false)
	private Choice choice;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Id_Result", nullable = false)
	private Result result;
	
	@Column(name = "Nb_Point", nullable = false)
	private int nbPoint;

	public ResultCorelation(){

	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Choice getChoice() {
		return choice;
	}

	public void setChoice(Choice choice) {
		this.choice = choice;
	}

	public Result getResult() {
		return result;
	}

	public void setResult(Result result) {
		this.result = result;
	}

	public int getNbPoint() {
		return nbPoint;
	}

	public void setNbPoint(int nbPoint) {
		this.nbPoint = nbPoint;
	}


}