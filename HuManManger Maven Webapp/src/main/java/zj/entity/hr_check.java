package zj.entity;

public class hr_check {
 private int check_id;
 private double early;
 private double withhold;
 private double absent;
 private int work_id;
 private work_register  wrok;
public int getCheck_id() {
	return check_id;
}
public void setCheck_id(int check_id) {
	this.check_id = check_id;
}
public double getEarly() {
	return early;
}
public void setEarly(double early) {
	this.early = early;
}
public double getWithhold() {
	return withhold;
}
public void setWithhold(double withhold) {
	this.withhold = withhold;
}
public double getAbsent() {
	return absent;
}
public void setAbsent(double absent) {
	this.absent = absent;
}
public int getWork_id() {
	return work_id;
}
public void setWork_id(int work_id) {
	this.work_id = work_id;
}
public work_register getWrok() {
	return wrok;
}
public void setWrok(work_register wrok) {
	this.wrok = wrok;
}
@Override
public String toString() {
	return "hr_check [check_id=" + check_id + ", early=" + early + ", withhold=" + withhold + ", absent=" + absent
			+ ", work_id=" + work_id + ", wrok=" + wrok + "]";
}
public hr_check(int check_id, double early, double withhold, double absent, int work_id, work_register wrok) {
	super();
	this.check_id = check_id;
	this.early = early;
	this.withhold = withhold;
	this.absent = absent;
	this.work_id = work_id;
	this.wrok = wrok;
}
public hr_check() {
	super();
	// TODO Auto-generated constructor stub
}
 

 
}
