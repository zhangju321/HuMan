package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class vocation {//请假
    private int vocationId;

    private int staffId;

    private String vocationReason;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date vocationQiTime;//请假起始时间

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date vocationJieTime;//请假截止时间

    private String vocationType;

    private String statusName;

    private String examinePerson;

    private String circulate;

    private String operate;

	public int getVocationId() {
		return vocationId;
	}

	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getVocationReason() {
		return vocationReason;
	}

	public void setVocationReason(String vocationReason) {
		this.vocationReason = vocationReason;
	}

	public Date getVocationQiTime() {
		return vocationQiTime;
	}

	public void setVocationQiTime(Date vocationQiTime) {
		this.vocationQiTime = vocationQiTime;
	}

	public Date getVocationJieTime() {
		return vocationJieTime;
	}

	public void setVocationJieTime(Date vocationJieTime) {
		this.vocationJieTime = vocationJieTime;
	}

	public String getVocationType() {
		return vocationType;
	}

	public void setVocationType(String vocationType) {
		this.vocationType = vocationType;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getExaminePerson() {
		return examinePerson;
	}

	public void setExaminePerson(String examinePerson) {
		this.examinePerson = examinePerson;
	}

	public String getCirculate() {
		return circulate;
	}

	public void setCirculate(String circulate) {
		this.circulate = circulate;
	}

	public String getOperate() {
		return operate;
	}

	public void setOperate(String operate) {
		this.operate = operate;
	}


 
}