package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class hr_recruit_recruitment {
    private int recruitmentId;
    private int planNo;
    private String applyerName;
    private String department;
    private String jobStatus;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date assPassTime;
    private String type;
    private String assessingOfficer;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date onBoardingTime;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startingSalaryTime;
    private String remark;
    private hr_recruit_plan plan;
	public int getRecruitmentId() {
		return recruitmentId;
	}
	public void setRecruitmentId(int recruitmentId) {
		this.recruitmentId = recruitmentId;
	}
	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public String getApplyerName() {
		return applyerName;
	}
	public void setApplyerName(String applyerName) {
		this.applyerName = applyerName;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getJobStatus() {
		return jobStatus;
	}
	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}
	public Date getAssPassTime() {
		return assPassTime;
	}
	public void setAssPassTime(Date assPassTime) {
		this.assPassTime = assPassTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAssessingOfficer() {
		return assessingOfficer;
	}
	public void setAssessingOfficer(String assessingOfficer) {
		this.assessingOfficer = assessingOfficer;
	}
	public Date getOnBoardingTime() {
		return onBoardingTime;
	}
	public void setOnBoardingTime(Date onBoardingTime) {
		this.onBoardingTime = onBoardingTime;
	}
	public Date getStartingSalaryTime() {
		return startingSalaryTime;
	}
	public void setStartingSalaryTime(Date startingSalaryTime) {
		this.startingSalaryTime = startingSalaryTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public hr_recruit_plan getPlan() {
		return plan;
	}
	public void setPlan(hr_recruit_plan plan) {
		this.plan = plan;
	}
	
	

}