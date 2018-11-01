package zj.entity;

import java.util.Date;

public class hr_recruit_plan {
    private Integer planNo;

    private Integer departmentid;

    private Integer positionid;

    private String planName;

    private String recruitDept;

    private String recruitPosition;

    private String planRecrNo;

    private String planDitch;

    private Double planBcws;

    private Date startDate;

    private Date endDate;

    private Date workDate;

    private Double salaryArea;

    private String positionRequire;

    private String recruitDirection;

    private String recruitRemark;

    private Date registerTime;

    private String attachmentName;

    private Integer planStatus;

    private String approvePerson;

    private Date approveDate;

    private String approveComment;

    public Integer getPlanNo() {
        return planNo;
    }

    public void setPlanNo(Integer planNo) {
        this.planNo = planNo;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Integer getPositionid() {
        return positionid;
    }

    public void setPositionid(Integer positionid) {
        this.positionid = positionid;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName == null ? null : planName.trim();
    }

    public String getRecruitDept() {
        return recruitDept;
    }

    public void setRecruitDept(String recruitDept) {
        this.recruitDept = recruitDept == null ? null : recruitDept.trim();
    }

    public String getRecruitPosition() {
        return recruitPosition;
    }

    public void setRecruitPosition(String recruitPosition) {
        this.recruitPosition = recruitPosition == null ? null : recruitPosition.trim();
    }

    public String getPlanRecrNo() {
        return planRecrNo;
    }

    public void setPlanRecrNo(String planRecrNo) {
        this.planRecrNo = planRecrNo == null ? null : planRecrNo.trim();
    }

    public String getPlanDitch() {
        return planDitch;
    }

    public void setPlanDitch(String planDitch) {
        this.planDitch = planDitch == null ? null : planDitch.trim();
    }

    public Double getPlanBcws() {
        return planBcws;
    }

    public void setPlanBcws(Double planBcws) {
        this.planBcws = planBcws;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Date getWorkDate() {
        return workDate;
    }

    public void setWorkDate(Date workDate) {
        this.workDate = workDate;
    }

    public Double getSalaryArea() {
        return salaryArea;
    }

    public void setSalaryArea(Double salaryArea) {
        this.salaryArea = salaryArea;
    }

    public String getPositionRequire() {
        return positionRequire;
    }

    public void setPositionRequire(String positionRequire) {
        this.positionRequire = positionRequire == null ? null : positionRequire.trim();
    }

    public String getRecruitDirection() {
        return recruitDirection;
    }

    public void setRecruitDirection(String recruitDirection) {
        this.recruitDirection = recruitDirection == null ? null : recruitDirection.trim();
    }

    public String getRecruitRemark() {
        return recruitRemark;
    }

    public void setRecruitRemark(String recruitRemark) {
        this.recruitRemark = recruitRemark == null ? null : recruitRemark.trim();
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName == null ? null : attachmentName.trim();
    }

    public Integer getPlanStatus() {
        return planStatus;
    }

    public void setPlanStatus(Integer planStatus) {
        this.planStatus = planStatus;
    }

    public String getApprovePerson() {
        return approvePerson;
    }

    public void setApprovePerson(String approvePerson) {
        this.approvePerson = approvePerson == null ? null : approvePerson.trim();
    }

    public Date getApproveDate() {
        return approveDate;
    }

    public void setApproveDate(Date approveDate) {
        this.approveDate = approveDate;
    }

    public String getApproveComment() {
        return approveComment;
    }

    public void setApproveComment(String approveComment) {
        this.approveComment = approveComment == null ? null : approveComment.trim();
    }
}