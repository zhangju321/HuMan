package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Staff_reinstatement {//复职
	
    private int reinstatementId;//复职id

    private int positionId;//职务外键
    
    private int staffId;//员工外键

    private int departmentId;//部门外键

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date reappointmentTimePlan;//拟复职日期 

    private int reappointmentType;//复职类型  调回 复员
    
    private String reappointmentState;//复职说明

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date firstSalaryTime;//工资恢复日期

    private String remark;//备注
    
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date reappointmentTimeFact;//实际复职日期

    private String despacho;//批示

    private String despachoPerson;//批示人
    
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date addTime;//登记日期

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastUpdateTime;//最后修改时间

    private int materialsCondition;//复职手续办理 

    private int attachmentId;//附件编号

    private String attachmentName;//附件名称

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date applicationDate;//申请日期

	public int getReinstatementId() {
		return reinstatementId;
	}

	public void setReinstatementId(int reinstatementId) {
		this.reinstatementId = reinstatementId;
	}

	public int getPositionId() {
		return positionId;
	}

	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public Date getReappointmentTimePlan() {
		return reappointmentTimePlan;
	}

	public void setReappointmentTimePlan(Date reappointmentTimePlan) {
		this.reappointmentTimePlan = reappointmentTimePlan;
	}

	public int getReappointmentType() {
		return reappointmentType;
	}

	public void setReappointmentType(int reappointmentType) {
		this.reappointmentType = reappointmentType;
	}

	public String getReappointmentState() {
		return reappointmentState;
	}

	public void setReappointmentState(String reappointmentState) {
		this.reappointmentState = reappointmentState;
	}

	public Date getFirstSalaryTime() {
		return firstSalaryTime;
	}

	public void setFirstSalaryTime(Date firstSalaryTime) {
		this.firstSalaryTime = firstSalaryTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getReappointmentTimeFact() {
		return reappointmentTimeFact;
	}

	public void setReappointmentTimeFact(Date reappointmentTimeFact) {
		this.reappointmentTimeFact = reappointmentTimeFact;
	}

	public String getDespacho() {
		return despacho;
	}

	public void setDespacho(String despacho) {
		this.despacho = despacho;
	}

	public String getDespachoPerson() {
		return despachoPerson;
	}

	public void setDespachoPerson(String despachoPerson) {
		this.despachoPerson = despachoPerson;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public int getMaterialsCondition() {
		return materialsCondition;
	}

	public void setMaterialsCondition(int materialsCondition) {
		this.materialsCondition = materialsCondition;
	}

	public int getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}

	public Date getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}

    
    

}