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
 

private Staff_info staff;
 private Department depar;
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

public Department getDepar() {
	return depar;
}
public void setDepar(Department depar) {
	this.depar = depar;
}
public Staff_info getStaff() {
	return staff;
}
public void setStaff(Staff_info staff) {
	this.staff = staff;
}


 
}
