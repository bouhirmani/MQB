package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "quiz")
public class Quiz implements java.io.Serializable {

	@Id
	@GeneratedValue(strategy =IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	private Integer id;
	
	@Column(name = "Background_Color", nullable = false, length = 10)
	private String backgroundColor;
	
	@Column(name = "Button_Color", nullable = false, length = 10)
	private String buttonColor;
	
	@Column(name = "Button_Text", nullable = false, length = 50)
	private String buttonText;
	
	@Column(name = "Cover_Photo", nullable = false)
	private byte coverPhoto;
	
	@Column(name = "Font_Color", nullable = false, length = 10)
	private String fontColor;
	
	@Column(name = "Font_Type", nullable = false, length = 50)
	private String fontType;
	
	@Column(name = "Text_Color", nullable = false, length = 10)
	private String textColor;
	
	@Column(name = "Logo", nullable = false)
	private byte logo;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "quiz")
	private Set<Question> questions = new HashSet<Question>(0);

	public Quiz() {
	}

	public Quiz(String backgroundColor, String buttonColor, String buttonText, byte coverPhoto, String fontColor,
			String fontType, String textColor, byte logo) {
		super();
		this.backgroundColor = backgroundColor;
		this.buttonColor = buttonColor;
		this.buttonText = buttonText;
		this.coverPhoto = coverPhoto;
		this.fontColor = fontColor;
		this.fontType = fontType;
		this.textColor = textColor;
		this.logo = logo;
	}


	public Quiz(String backgroundColor, String buttonColor, String buttonText, byte coverPhoto, String fontColor,
			String fontType, String textColor, byte logo, Set<Question> questions) {
		super();
		this.backgroundColor = backgroundColor;
		this.buttonColor = buttonColor;
		this.buttonText = buttonText;
		this.coverPhoto = coverPhoto;
		this.fontColor = fontColor;
		this.fontType = fontType;
		this.textColor = textColor;
		this.logo = logo;
		this.questions = questions;
	}

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


}

