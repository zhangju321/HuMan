package zj.entity;

public class RoleMenu {
	  private int id;
	  private int rid;
	  private int mid;
  public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getMid() {
		return mid;
	}
	public RoleMenu(int id, int rid, int mid) {
		super();
		this.id = id;
		this.rid = rid;
		this.mid = mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	@Override
	public String toString() {
		return "RoleMenu [id=" + id + ", rid=" + rid + ", mid=" + mid + "]";
	}
	public RoleMenu() {
		super();
		// TODO Auto-generated constructor stub
	}

}
