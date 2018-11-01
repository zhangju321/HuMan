package zj.entity;

import java.util.Date;

public class staff_reinstatement {
    private Integer reinstatementId;

    private Integer staffId;

    private Integer positionid;

    private Integer departmentid;

    private Date reappointmentTimeFact;

    private Integer reappointmentType;

    private String reappointmentState;

    private String remark;

    private Date addTime;

    private Date lastUpdateTime;

    private Date reappointmentTimePlan;

    private String despachoPerson;

    private String despacho;

    private Date applicationDate;

    private Date firstSalaryTime;

    private Integer materialsCondition;

    private Integer attachmentId;

    private String attachmentName;

    public Integer getReinstatementId() {
        return reinstatementId;
    }

    public void setReinstatementId(Integer reinstatementId) {
        this.reinstatementId = reinstatementId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Date getReappointmentTimeFact() {
        return reappointmentTimeFact;
    }

    public void setReappointmentTimeFact(Date reappointmentTimeFact) {
        this.reappointmentTimeFact = reappointmentTimeFact;
    }

    public Integer getReappointmentType() {
        return reappointmentType;
    }

    public void setReappointmentType(Integer reappointmentType) {
        this.reappointmentType = reappointmentType;
    }

    public String getReappointmentState() {
        return reappointmentState;
    }

    public void setReappointmentState(String reappointmentState) {
        this.reappointmentState = reappointmentState == null ? null : reappointmentState.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

    public Date getReappointmentTimePlan() {
        return reappointmentTimePlan;
    }

    public void setReappointmentTimePlan(Date reappointmentTimePlan) {
        this.reappointmentTimePlan = reappointmentTimePlan;
    }

    public String getDespachoPerson() {
        return despachoPerson;
    }

    public void setDespachoPerson(String despachoPerson) {
        this.despachoPerson = despachoPerson == null ? null : despachoPerson.trim();
    }

    public String getDespacho() {
        return despacho;
    }

    public void setDespacho(String despacho) {
        this.despacho = despacho == null ? null : despacho.trim();
    }

    public Date getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }

    public Date getFirstSalaryTime() {
        return firstSalaryTime;
    }

    public void setFirstSalaryTime(Date firstSalaryTime) {
        this.firstSalaryTime = firstSalaryTime;
    }

    public Integer getMaterialsCondition() {
        return materialsCondition;
    }

    public void setMaterialsCondition(Integer materialsCondition) {
        this.materialsCondition = materialsCondition;
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
}