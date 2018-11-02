package zj.entity;

public class hr_check {
 private int check_id;
 private double early;
 private double withhold;
 private double absent;
 private int work_id;
 private Work_register  wrok;
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
public Work_register getWrok() {
	return wrok;
}
public void setWrok(Work_register wrok) {
	this.wrok = wrok;
}


 
}
