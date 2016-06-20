package fr.marketing.quizbox.model;

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
	
	@Column(name = "Background_Color", nullable = true, length = 10)
	private String backgroundColor;
	
	@Column(name = "Button_Color", nullable = true, length = 10)
	private String buttonColor;
	
	@Column(name = "Button_Text", nullable = false, length = 50)
	private String buttonText;
	
	@Column(name = "Cover_Photo", nullable = true)
	private byte coverPhoto;
	
	@Column(name = "Font_Color", nullable = true, length = 10)
	private String fontColor;
	
	@Column(name = "Font_Type", nullable = false, length = 50)
	private String fontType;
	
	@Column(name = "Description", nullable = true, length = 256)
	private String description;
	
	@Column(name = "Title", nullable = true, length = 256)
	private String title;
	
	@Column(name = "Text_Color", nullable = true, length = 10)
	private String textColor;
	
	@Column(name = "Draft", nullable = false)
	private int draft;
	
	@Column(name = "Logo", nullable = true)
	private byte logo;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "quiz")
	private Set<Question> questions = new HashSet<Question>(0);
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "quiz")
	private Set<Result> results = new HashSet<Result>(0);
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "quiz")
	private Set<User> users = new HashSet<User>(0);

	public Quiz() {
	}
	
	public Quiz(String backgroundColor, String buttonColor, String buttonText, byte coverPhoto, String fontColor,
			String fontType, String description, String title, String textColor, byte logo, Set<Question> questions, Set<Result> results, Set<User> users, int draft) {
		super();
		this.backgroundColor = backgroundColor;
		this.buttonColor = buttonColor;
		this.buttonText = buttonText;
		this.coverPhoto = coverPhoto;
		this.fontColor = fontColor;
		this.fontType = fontType;
		this.description = description;
		this.title = title;
		this.textColor = textColor;
		this.logo = logo;
		this.questions = questions;
		this.results = results;
		this.users = users;
		this.draft = draft;
	}

	public Quiz(String backgroundColor, String buttonColor, String buttonText, byte coverPhoto, String fontColor,
			String fontType, String description, String title, String textColor, byte logo, int draft) {
		super();
		this.backgroundColor = backgroundColor;
		this.buttonColor = buttonColor;
		this.buttonText = buttonText;
		this.coverPhoto = coverPhoto;
		this.fontColor = fontColor;
		this.fontType = fontType;
		this.description = description;
		this.title = title;
		this.textColor = textColor;
		this.logo = logo;
		this.draft = draft;
	}




	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBackgroundColor() {
		return backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public String getButtonColor() {
		return buttonColor;
	}

	public void setButtonColor(String buttonColor) {
		this.buttonColor = buttonColor;
	}

	public String getButtonText() {
		return buttonText;
	}

	public void setButtonText(String buttonText) {
		this.buttonText = buttonText;
	}

	public byte getCoverPhoto() {
		return coverPhoto;
	}

	public void setCoverPhoto(byte coverPhoto) {
		this.coverPhoto = coverPhoto;
	}

	public String getFontColor() {
		return fontColor;
	}

	public void setFontColor(String fontColor) {
		this.fontColor = fontColor;
	}

	public String getFontType() {
		return fontType;
	}

	public void setFontType(String fontType) {
		this.fontType = fontType;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTextColor() {
		return textColor;
	}

	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}

	public byte getLogo() {
		return logo;
	}

	public void setLogo(byte logo) {
		this.logo = logo;
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}

	public Set<Result> getResults() {
		return results;
	}

	public void setResults(Set<Result> results) {
		this.results = results;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

	public int getDraft() {
		return draft;
	}

	public void setDraft(int draft) {
		this.draft = draft;
	}
	
	

}

