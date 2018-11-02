package zj.entity;

public class Role {
  private int rid;
  private String rname;
  private int sort;
  private String remark;
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public String getRname() {
	return rname;
}
public void setRname(String rname) {
	this.rname = rname;
}
public int getSort() {
	return sort;
}
public void setSort(int sort) {
	this.sort = sort;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
public Role(int rid, String rname, int sort, String remark) {
	super();
	this.rid = rid;
	this.rname = rname;
	this.sort = sort;
	this.remark = remark;
}
public Role() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Role [rid=" + rid + ", rname=" + rname + ", sort=" + sort + ", remark=" + remark + "]";
}
  

}
