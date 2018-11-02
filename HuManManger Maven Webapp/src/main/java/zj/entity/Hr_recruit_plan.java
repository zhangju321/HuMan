package zj.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Hr_recruit_plan {
    private int planNo;
    private String planName;
    private String recruitDept;
    private String recruitPosition;
    private int planRecrNo;
    private String planDitch;
    private Double planBcws;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date workDate;
    private Double salaryArea;
    private String positionRequire;
    private String recruitDirection;
    private String recruitRemark;
    private String registerTime;
    private int planStatus;
    private String attachmentName;
    private String approvePerson;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date approveDate;
    private String approveComment;
    private List<Hr_recruit_filter> filter;
    private List<Hr_recruit_requirements> requ;
    private List<Hr_recruit_recruitment> recru;
    private Department depart;
    private List<Hr_recruit_pool> hr_recruit_pool;
	
	public List<Hr_recruit_pool> getHr_recruit_pool() {
		return hr_recruit_pool;
	}
	public void setHr_recruit_pool(List<Hr_recruit_pool> hr_recruit_pool) {
		this.hr_recruit_pool = hr_recruit_pool;
	}
	public Department getDepart() {
		return depart;
	}
	public void setDepart(Department depart) {
		this.depart = depart;
	}
	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getRecruitDept() {
		return recruitDept;
	}
	public void setRecruitDept(String recruitDept) {
		this.recruitDept = recruitDept;
	}
	public String getRecruitPosition() {
		return recruitPosition;
	}
	public void setRecruitPosition(String recruitPosition) {
		this.recruitPosition = recruitPosition;
	}
	public int getPlanRecrNo() {
		return planRecrNo;
	}
	public void setPlanRecrNo(int planRecrNo) {
		this.planRecrNo = planRecrNo;
	}
	public String getPlanDitch() {
		return planDitch;
	}
	public void setPlanDitch(String planDitch) {
		this.planDitch = planDitch;
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
		this.positionRequire = positionRequire;
	}
	public String getRecruitDirection() {
		return recruitDirection;
	}
	public void setRecruitDirection(String recruitDirection) {
		this.recruitDirection = recruitDirection;
	}
	public String getRecruitRemark() {
		return recruitRemark;
	}
	public void setRecruitRemark(String recruitRemark) {
		this.recruitRemark = recruitRemark;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	public int getPlanStatus() {
		return planStatus;
	}
	public void setPlanStatus(int planStatus) {
		this.planStatus = planStatus;
	}
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public String getApprovePerson() {
		return approvePerson;
	}
	public void setApprovePerson(String approvePerson) {
		this.approvePerson = approvePerson;
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
		this.approveComment = approveComment;
	}
	public List<Hr_recruit_filter> getFilter() {
		return filter;
	}
	public void setFilter(List<Hr_recruit_filter> filter) {
		this.filter = filter;
	}
	public List<Hr_recruit_requirements> getRequ() {
		return requ;
	}
	public void setRequ(List<Hr_recruit_requirements> requ) {
		this.requ = requ;
	}
	public List<Hr_recruit_recruitment> getRecru() {
		return recru;
	}
	public void setRecru(List<Hr_recruit_recruitment> recru) {
		this.recru = recru;
	}
	
	
}