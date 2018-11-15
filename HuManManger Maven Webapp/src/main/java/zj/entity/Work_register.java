package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Work_register {//上班登记
    private Integer workId;

    private Integer departmentid;

    private Integer staffId;

    private Integer registerOrder;

    private Integer attendanceShould;//应出勤

    private Integer attendanceActual;//实际出勤

    private Integer rest;//休息

    private Integer absenteeism;//旷工

    private Integer late;//迟到


    private Integer earlyRetreat;//早退


    private String workTime1;//上班时间

    private String workOfftime1;//下班时间
    private String workTime2;
    private String workOfftime2;
	public Integer getWorkId() {
		return workId;
	}
	public void setWorkId(Integer workId) {
		this.workId = workId;
	}
	public Integer getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}
	public Integer getStaffId() {
		return staffId;
	}
	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}
	public Integer getRegisterOrder() {
		return registerOrder;
	}
	public void setRegisterOrder(Integer registerOrder) {
		this.registerOrder = registerOrder;
	}
	public Integer getAttendanceShould() {
		return attendanceShould;
	}
	public void setAttendanceShould(Integer attendanceShould) {
		this.attendanceShould = attendanceShould;
	}
	public Integer getAttendanceActual() {
		return attendanceActual;
	}
	public void setAttendanceActual(Integer attendanceActual) {
		this.attendanceActual = attendanceActual;
	}
	public Integer getRest() {
		return rest;
	}
	public void setRest(Integer rest) {
		this.rest = rest;
	}
	public Integer getAbsenteeism() {
		return absenteeism;
	}
	public void setAbsenteeism(Integer absenteeism) {
		this.absenteeism = absenteeism;
	}
	public Integer getLate() {
		return late;
	}
	public void setLate(Integer late) {
		this.late = late;
	}
	public Integer getEarlyRetreat() {
		return earlyRetreat;
	}
	public void setEarlyRetreat(Integer earlyRetreat) {
		this.earlyRetreat = earlyRetreat;
	}
	public String getWorkTime1() {
		return workTime1;
	}
	public void setWorkTime1(String workTime1) {
		this.workTime1 = workTime1;
	}
	public String getWorkOfftime1() {
		return workOfftime1;
	}
	public void setWorkOfftime1(String workOfftime1) {
		this.workOfftime1 = workOfftime1;
	}
	public String getWorkTime2() {
		return workTime2;
	}
	public void setWorkTime2(String workTime2) {
		this.workTime2 = workTime2;
	}
	public String getWorkOfftime2() {
		return workOfftime2;
	}
	public void setWorkOfftime2(String workOfftime2) {
		this.workOfftime2 = workOfftime2;
	}
	
}