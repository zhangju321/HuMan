package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Hr_recruit_filter {
	private int filterId;
    private int planNo;
    private int id;
    private String employeeName;
    private String position;
    private String employeeMajor;
    private String employeePhone;
    private String transactorStep;
    private int stepFlag;
    private int endFlag;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date nextDateTime;
    private String nextTransaStep;
    /*外键计划表*/
    private Hr_recruit_plan plan;
    /*初选*/
    private String filterMethod1;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date filterDateTime1;
    private String firstContent1;
    private String firstView1;
    private String transactorStep1;
    private String passOrNot1;
    private String nextTransaStep1;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date nextDateTime1;
	/*复选*/
    private String filterMethod2;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date filterDateTime2;
    private String firstContent2;
    private String firstView2;
    private String transactorStep2;
    private String passOrNot2;
    private String nextTransaStep2;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date nextDateTime2;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFilterId() {
		return filterId;
	}
	public void setFilterId(int filterId) {
		this.filterId = filterId;
	}
	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getEmployeeMajor() {
		return employeeMajor;
	}
	public void setEmployeeMajor(String employeeMajor) {
		this.employeeMajor = employeeMajor;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getTransactorStep() {
		return transactorStep;
	}
	public void setTransactorStep(String transactorStep) {
		this.transactorStep = transactorStep;
	}
	public int getStepFlag() {
		return stepFlag;
	}
	public void setStepFlag(int stepFlag) {
		this.stepFlag = stepFlag;
	}
	public int getEndFlag() {
		return endFlag;
	}
	public void setEndFlag(int endFlag) {
		this.endFlag = endFlag;
	}
	public Date getNextDateTime() {
		return nextDateTime;
	}
	public void setNextDateTime(Date nextDateTime) {
		this.nextDateTime = nextDateTime;
	}
	public String getNextTransaStep() {
		return nextTransaStep;
	}
	public void setNextTransaStep(String nextTransaStep) {
		this.nextTransaStep = nextTransaStep;
	}
	public Hr_recruit_plan getPlan() {
		return plan;
	}
	public void setPlan(Hr_recruit_plan plan) {
		this.plan = plan;
	}
	public String getFilterMethod1() {
		return filterMethod1;
	}
	public void setFilterMethod1(String filterMethod1) {
		this.filterMethod1 = filterMethod1;
	}
	public Date getFilterDateTime1() {
		return filterDateTime1;
	}
	public void setFilterDateTime1(Date filterDateTime1) {
		this.filterDateTime1 = filterDateTime1;
	}
	public String getFirstContent1() {
		return firstContent1;
	}
	public void setFirstContent1(String firstContent1) {
		this.firstContent1 = firstContent1;
	}
	public String getFirstView1() {
		return firstView1;
	}
	public void setFirstView1(String firstView1) {
		this.firstView1 = firstView1;
	}
	public String getTransactorStep1() {
		return transactorStep1;
	}
	public void setTransactorStep1(String transactorStep1) {
		this.transactorStep1 = transactorStep1;
	}
	public String getPassOrNot1() {
		return passOrNot1;
	}
	public void setPassOrNot1(String passOrNot1) {
		this.passOrNot1 = passOrNot1;
	}
	public String getNextTransaStep1() {
		return nextTransaStep1;
	}
	public void setNextTransaStep1(String nextTransaStep1) {
		this.nextTransaStep1 = nextTransaStep1;
	}
	public Date getNextDateTime1() {
		return nextDateTime1;
	}
	public void setNextDateTime1(Date nextDateTime1) {
		this.nextDateTime1 = nextDateTime1;
	}
	public String getFilterMethod2() {
		return filterMethod2;
	}
	public void setFilterMethod2(String filterMethod2) {
		this.filterMethod2 = filterMethod2;
	}
	public Date getFilterDateTime2() {
		return filterDateTime2;
	}
	public void setFilterDateTime2(Date filterDateTime2) {
		this.filterDateTime2 = filterDateTime2;
	}
	public String getFirstContent2() {
		return firstContent2;
	}
	public void setFirstContent2(String firstContent2) {
		this.firstContent2 = firstContent2;
	}
	public String getFirstView2() {
		return firstView2;
	}
	public void setFirstView2(String firstView2) {
		this.firstView2 = firstView2;
	}
	public String getTransactorStep2() {
		return transactorStep2;
	}
	public void setTransactorStep2(String transactorStep2) {
		this.transactorStep2 = transactorStep2;
	}
	public String getPassOrNot2() {
		return passOrNot2;
	}
	public void setPassOrNot2(String passOrNot2) {
		this.passOrNot2 = passOrNot2;
	}
	public String getNextTransaStep2() {
		return nextTransaStep2;
	}
	public void setNextTransaStep2(String nextTransaStep2) {
		this.nextTransaStep2 = nextTransaStep2;
	}
	public Date getNextDateTime2() {
		return nextDateTime2;
	}
	public void setNextDateTime2(Date nextDateTime2) {
		this.nextDateTime2 = nextDateTime2;
	}
	
}