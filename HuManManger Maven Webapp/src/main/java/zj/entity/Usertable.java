package zj.entity;



/**
 * Usertable entity. @author MyEclipse Persistence Tools
 */

public class Usertable implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Roles roles;
	private String userName;
	private String password;
	private String question;
	private String answer;

	// Constructors

	/** default constructor */
	public Usertable() {
	}

	/** full constructor */
	public Usertable(Roles roles, String userName, String password, String question, String answer) {
		this.roles = roles;
		this.userName = userName;
		this.password = password;
		this.question = question;
		this.answer = answer;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	

	public Roles getRoles() {
		return this.roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}


}