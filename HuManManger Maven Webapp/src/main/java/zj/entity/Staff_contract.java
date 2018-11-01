package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Staff_contract {
    private int contractId;//合同编号

    private int staffId;//员工外键

    private int contractType;//合同类型

    private int contractSpecialization;//合同属性

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date makeContract;//合同签订日期

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date trailEffectiveTime;//试用生效日期

    private String probationaryPeriod;//试用期限

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date trailOverTime;//试用到期日期

    private int passOrNot;//是否转正

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date probationEndDate;//合同转正日期

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date probationEffectiveDate;//合同生效日期

    private String activePeriod;//合同期限

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date contractEndTime;//合同到期日期
    
    private String remark;//备注

    private int removeOrNot;//合同是否解除

    private int status;//合同状态

    private String signTimes;//签约次数

    private String attachmentId;//附件编号

    private String attachmentName;//附件名称

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date addTime;//登记时间

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastUpdateTime;//最后修改时间

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date remindTime;//合同到期提醒

    private String staffUserName;//甲方
    
    private String remindUser;//提醒人员

    private int remindType;//提醒方式

    private int hasReminded;//是否已经提醒

    private String renewTime;//合同续签时间

    private String contractEnterpries;//合同续签公司

    private int isTrial;//合同是否试用

    private int isRenew;//合同是否续签

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date contractRemoveTime;//合同解除日期

	public int getContractId() {
		return contractId;
	}

	public void setContractId(int contractId) {
		this.contractId = contractId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getContractType() {
		return contractType;
	}

	public void setContractType(int contractType) {
		this.contractType = contractType;
	}

	public int getContractSpecialization() {
		return contractSpecialization;
	}

	public void setContractSpecialization(int contractSpecialization) {
		this.contractSpecialization = contractSpecialization;
	}

	public Date getMakeContract() {
		return makeContract;
	}

	public void setMakeContract(Date makeContract) {
		this.makeContract = makeContract;
	}

	public Date getTrailEffectiveTime() {
		return trailEffectiveTime;
	}

	public void setTrailEffectiveTime(Date trailEffectiveTime) {
		this.trailEffectiveTime = trailEffectiveTime;
	}

	public String getProbationaryPeriod() {
		return probationaryPeriod;
	}

	public void setProbationaryPeriod(String probationaryPeriod) {
		this.probationaryPeriod = probationaryPeriod;
	}

	public Date getTrailOverTime() {
		return trailOverTime;
	}

	public void setTrailOverTime(Date trailOverTime) {
		this.trailOverTime = trailOverTime;
	}

	public int getPassOrNot() {
		return passOrNot;
	}

	public void setPassOrNot(int passOrNot) {
		this.passOrNot = passOrNot;
	}

	public Date getProbationEndDate() {
		return probationEndDate;
	}

	public void setProbationEndDate(Date probationEndDate) {
		this.probationEndDate = probationEndDate;
	}

	public Date getProbationEffectiveDate() {
		return probationEffectiveDate;
	}

	public void setProbationEffectiveDate(Date probationEffectiveDate) {
		this.probationEffectiveDate = probationEffectiveDate;
	}

	public String getActivePeriod() {
		return activePeriod;
	}

	public void setActivePeriod(String activePeriod) {
		this.activePeriod = activePeriod;
	}

	public Date getContractEndTime() {
		return contractEndTime;
	}

	public void setContractEndTime(Date contractEndTime) {
		this.contractEndTime = contractEndTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getRemoveOrNot() {
		return removeOrNot;
	}

	public void setRemoveOrNot(int removeOrNot) {
		this.removeOrNot = removeOrNot;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSignTimes() {
		return signTimes;
	}

	public void setSignTimes(String signTimes) {
		this.signTimes = signTimes;
	}

	public String getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(String attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
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

	public Date getRemindTime() {
		return remindTime;
	}

	public void setRemindTime(Date remindTime) {
		this.remindTime = remindTime;
	}

	public String getStaffUserName() {
		return staffUserName;
	}

	public void setStaffUserName(String staffUserName) {
		this.staffUserName = staffUserName;
	}

	public String getRemindUser() {
		return remindUser;
	}

	public void setRemindUser(String remindUser) {
		this.remindUser = remindUser;
	}

	public int getRemindType() {
		return remindType;
	}

	public void setRemindType(int remindType) {
		this.remindType = remindType;
	}

	public int getHasReminded() {
		return hasReminded;
	}

	public void setHasReminded(int hasReminded) {
		this.hasReminded = hasReminded;
	}

	public String getRenewTime() {
		return renewTime;
	}

	public void setRenewTime(String renewTime) {
		this.renewTime = renewTime;
	}

	public String getContractEnterpries() {
		return contractEnterpries;
	}

	public void setContractEnterpries(String contractEnterpries) {
		this.contractEnterpries = contractEnterpries;
	}

	public int getIsTrial() {
		return isTrial;
	}

	public void setIsTrial(int isTrial) {
		this.isTrial = isTrial;
	}

	public int getIsRenew() {
		return isRenew;
	}

	public void setIsRenew(int isRenew) {
		this.isRenew = isRenew;
	}

	public Date getContractRemoveTime() {
		return contractRemoveTime;
	}

	public void setContractRemoveTime(Date contractRemoveTime) {
		this.contractRemoveTime = contractRemoveTime;
	}


    


   
}