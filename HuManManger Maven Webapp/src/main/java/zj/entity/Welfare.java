package zj.entity;

public class Welfare {
 private int welfareid;
 private int project_id;
 private int staff_id;
 private int departmentId;
 private String welfare_type;
 private String issue_date;
 private double welfare_monery;
 private String tax;
 private String goods;
 private String remark;
 private String uploda;
 

private staff_info staff;
 private department depar;
public int getWelfareid() {
	return welfareid;
}
public void setWelfareid(int welfareid) {
	this.welfareid = welfareid;
}
public int getProject_id() {
	return project_id;
}
public void setProject_id(int project_id) {
	this.project_id = project_id;
}
public int getStaff_id() {
	return staff_id;
}
public void setStaff_id(int staff_id) {
	this.staff_id = staff_id;
}
public int getDepartmentId() {
	return departmentId;
}
public void setDepartmentId(int departmentId) {
	this.departmentId = departmentId;
}
public String getWelfare_type() {
	return welfare_type;
}
public void setWelfare_type(String welfare_type) {
	this.welfare_type = welfare_type;
}
public String getIssue_date() {
	return issue_date;
}
public void setIssue_date(String issue_date) {
	this.issue_date = issue_date;
}
public double getWelfare_monery() {
	return welfare_monery;
}
public void setWelfare_monery(double welfare_monery) {
	this.welfare_monery = welfare_monery;
}
public String getTax() {
	return tax;
}
public void setTax(String tax) {
	this.tax = tax;
}
public String getGoods() {
	return goods;
}
public void setGoods(String goods) {
	this.goods = goods;
}
public String getRemark() {
	return remark;
}
public void setRemark(String remark) {
	this.remark = remark;
}
public String getUploda() {
	return uploda;
}
public void setUploda(String uploda) {
	this.uploda = uploda;
}
public staff_info getStaff() {
	return staff;
}
public void setStaff(staff_info staff) {
	this.staff = staff;
}
public department getDepar() {
	return depar;
}
public void setDepar(department depar) {
	this.depar = depar;
}
@Override
public String toString() {
	return "Welfare [welfareid=" + welfareid + ", project_id=" + project_id + ", staff_id=" + staff_id
			+ ", departmentId=" + departmentId + ", welfare_type=" + welfare_type + ", issue_date=" + issue_date
			+ ", welfare_monery=" + welfare_monery + ", tax=" + tax + ", goods=" + goods + ", remark=" + remark
			+ ", uploda=" + uploda + ", staff=" + staff + ", depar=" + depar + "]";
}
public Welfare(int welfareid, int project_id, int staff_id, int departmentId, String welfare_type, String issue_date,
		double welfare_monery, String tax, String goods, String remark, String uploda, staff_info staff,
		department depar) {
	super();
	this.welfareid = welfareid;
	this.project_id = project_id;
	this.staff_id = staff_id;
	this.departmentId = departmentId;
	this.welfare_type = welfare_type;
	this.issue_date = issue_date;
	this.welfare_monery = welfare_monery;
	this.tax = tax;
	this.goods = goods;
	this.remark = remark;
	this.uploda = uploda;
	this.staff = staff;
	this.depar = depar;
}
public Welfare() {
	super();
	// TODO Auto-generated constructor stub
}

 
}
