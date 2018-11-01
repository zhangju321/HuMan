package zj.entity;

import java.util.Date;

public class staff_leave {
    private Integer leaveId;

    private Integer positionid;

    private Integer staffId;

    private Integer departmentid;

    private Integer staStaffId;

    private Date quitTimePlan;

    private Integer quitType;

    private String quitReason;

    private Date lastSalaryTime;

    private String trace;

    private String remark;

    private Date quitTimeFact;

    private Integer materialsCondition;

    private String despacho;

    private String despachoPerson;

    private Date addTime;

    private Date lastUpdateTime;

    private Integer attachmentId;

    private String attachmentName;

    private Date applicationDate;

    private Integer salary;

    private Integer tement;

    private Integer isBlacklist;

    public Integer getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(Integer leaveId) {
        this.leaveId = leaveId;
    }

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Integer getStaStaffId() {
        return staStaffId;
    }

    public void setStaStaffId(Integer staStaffId) {
        this.staStaffId = staStaffId;
    }

    public Date getQuitTimePlan() {
        return quitTimePlan;
    }

    public void setQuitTimePlan(Date quitTimePlan) {
        this.quitTimePlan = quitTimePlan;
    }

    public Integer getQuitType() {
        return quitType;
    }

    public void setQuitType(Integer quitType) {
        this.quitType = quitType;
    }

    public String getQuitReason() {
        return quitReason;
    }

    public void setQuitReason(String quitReason) {
        this.quitReason = quitReason == null ? null : quitReason.trim();
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
        this.trace = trace == null ? null : trace.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Date getQuitTimeFact() {
        return quitTimeFact;
    }

    public void setQuitTimeFact(Date quitTimeFact) {
        this.quitTimeFact = quitTimeFact;
    }

    public Integer getMaterialsCondition() {
        return materialsCondition;
    }

    public void setMaterialsCondition(Integer materialsCondition) {
        this.materialsCondition = materialsCondition;
    }

    public String getDespacho() {
        return despacho;
    }

    public void setDespacho(String despacho) {
        this.despacho = despacho == null ? null : despacho.trim();
    }

    public String getDespachoPerson() {
        return despachoPerson;
    }

    public void setDespachoPerson(String despachoPerson) {
        this.despachoPerson = despachoPerson == null ? null : despachoPerson.trim();
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

    public Integer getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(Integer attachmentId) {
        this.attachmentId = attachmentId;
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName == null ? null : attachmentName.trim();
    }

    public Date getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public Integer getTement() {
        return tement;
    }

    public void setTement(Integer tement) {
        this.tement = tement;
    }

    public Integer getIsBlacklist() {
        return isBlacklist;
    }

    public void setIsBlacklist(Integer isBlacklist) {
        this.isBlacklist = isBlacklist;
    }
}