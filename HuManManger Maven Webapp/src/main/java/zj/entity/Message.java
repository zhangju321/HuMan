package zj.entity;

/**
 * 消息类
 * @author lang
 *
 */
public class Message {
	private int state;//状态码
	private String message;//消息内容
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Message(String message) {
		super();
		this.message = message;
	}

	public Message() {
		super();
	}

	public Message(int state, String message) {
		super();
		this.state = state;
		this.message = message;
	}
	
	
	
}
