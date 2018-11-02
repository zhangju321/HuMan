package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Staff_leave {
    private int leaveId;//离职编号
    
    private int staffId;//员工编号

    private int departmentId;//部门外键
    
    private int positionId;//职务外键

    private int staStaffId;//员工外键

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date quitTimePlan;//拟离职日期

    private int quitType;//离职类型
    
    private String quitReason;//离职原因

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastSalaryTime;//工资截止时间

    private String trace;//去向

    private String remark;//备注

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date quitTimeFact;//实际离职日期

    private int materialsCondition;//物品交接情况

    private String despacho;//批示                            

    private String despachoPerson;//批示人

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date addTime;//登记时间

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastUpdateTime;//最后修改时间

    private int attachmentId;//附件

    private String attachmentName;//附件名称

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date applicationDate;//申请日期

    private int salary;//当月薪资

    private int tement;//是否复职

    private int isBlacklist;//黑名单

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
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

	public int getPositionId() {
		return positionId;
	}

	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}

	public int getStaStaffId() {
		return staStaffId;
	}

	public void setStaStaffId(int staStaffId) {
		this.staStaffId = staStaffId;
	}

	public Date getQuitTimePlan() {
		return quitTimePlan;
	}

	public void setQuitTimePlan(Date quitTimePlan) {
		this.quitTimePlan = quitTimePlan;
	}

	public int getQuitType() {
		return quitType;
	}

	public void setQuitType(int quitType) {
		this.quitType = quitType;
	}

	public String getQuitReason() {
		return quitReason;
	}

	public void setQuitReason(String quitReason) {
		this.quitReason = quitReason;
	}

	public Date getLastSalaryTime() {
		return lastSalaryTime;
	}

	public void setLastSalaryTime(Date lastSalaryTime) {
		this.lastSalaryTime = lastSalaryTime;
	}

	public String getTrace() {
		return trace;
	}

	public void setTrace(String trace) {
		this.trace = trace;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getQuitTimeFact() {
		return quitTimeFact;
	}

	public void setQuitTimeFact(Date quitTimeFact) {
		this.quitTimeFact = quitTimeFact;
	}

	public int getMaterialsCondition() {
		return materialsCondition;
	}

	public void setMaterialsCondition(int materialsCondition) {
		this.materialsCondition = materialsCondition;
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

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getTement() {
		return tement;
	}

	public void setTement(int tement) {
		this.tement = tement;
	}

	public int getIsBlacklist() {
		return isBlacklist;
	}

	public void setIsBlacklist(int isBlacklist) {
		this.isBlacklist = isBlacklist;
	}

	
	


    
    
}