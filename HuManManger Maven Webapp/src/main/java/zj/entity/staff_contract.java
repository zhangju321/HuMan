package zj.entity;

import java.util.Date;

public class staff_contract {
    private Integer contractId;

    private Integer staffId;

    private String contractType;

    private String contractSpecialization;

    private Date makeContract;

    private Date trailEffectiveTime;

    private String probationaryPeriod;

    private Date trailOverTime;

    private Integer passOrNot;

    private Date probationEndDate;

    private Date probationEffectiveDate;

    private String activePeriod;

    private Date contractEndTime;

    private String remark;

    private Integer removeOrNot;

    private String status;

    private String signTimes;

    private String attachmentId;

    private String attachmentName;

    private Date addTime;

    private Date lastUpdateTime;

    private Date remindTime;

    private String staffUserName;

    private String remindUser;

    private Integer remindType;

    private Integer hasReminded;

    private String renewTime;

    private String contractEnterpries;

    private Integer isTrial;

    private Integer isRenew;

    private Date contractRemoveTime;

    public Integer getContractId() {
        return contractId;
    }

    public void setContractId(Integer contractId) {
        this.contractId = contractId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getContractType() {
        return contractType;
    }

    public void setContractType(String contractType) {
        this.contractType = contractType == null ? null : contractType.trim();
    }

    public String getContractSpecialization() {
        return contractSpecialization;
    }

    public void setContractSpecialization(String contractSpecialization) {
        this.contractSpecialization = contractSpecialization == null ? null : contractSpecialization.trim();
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
        this.probationaryPeriod = probationaryPeriod == null ? null : probationaryPeriod.trim();
    }

    public Date getTrailOverTime() {
        return trailOverTime;
    }

    public void setTrailOverTime(Date trailOverTime) {
        this.trailOverTime = trailOverTime;
    }

    public Integer getPassOrNot() {
        return passOrNot;
    }

    public void setPassOrNot(Integer passOrNot) {
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
        this.activePeriod = activePeriod == null ? null : activePeriod.trim();
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
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getRemoveOrNot() {
        return removeOrNot;
    }

    public void setRemoveOrNot(Integer removeOrNot) {
        this.removeOrNot = removeOrNot;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getSignTimes() {
        return signTimes;
    }

    public void setSignTimes(String signTimes) {
        this.signTimes = signTimes == null ? null : signTimes.trim();
    }

    public String getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(String attachmentId) {
        this.attachmentId = attachmentId == null ? null : attachmentId.trim();
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName == null ? null : attachmentName.trim();
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
        this.staffUserName = staffUserName == null ? null : staffUserName.trim();
    }

    public String getRemindUser() {
        return remindUser;
    }

    public void setRemindUser(String remindUser) {
        this.remindUser = remindUser == null ? null : remindUser.trim();
    }

    public Integer getRemindType() {
        return remindType;
    }

    public void setRemindType(Integer remindType) {
        this.remindType = remindType;
    }

    public Integer getHasReminded() {
        return hasReminded;
    }

    public void setHasReminded(Integer hasReminded) {
        this.hasReminded = hasReminded;
    }

    public String getRenewTime() {
        return renewTime;
    }

    public void setRenewTime(String renewTime) {
        this.renewTime = renewTime == null ? null : renewTime.trim();
    }

    public String getContractEnterpries() {
        return contractEnterpries;
    }

    public void setContractEnterpries(String contractEnterpries) {
        this.contractEnterpries = contractEnterpries == null ? null : contractEnterpries.trim();
    }

    public Integer getIsTrial() {
        return isTrial;
    }

    public void setIsTrial(Integer isTrial) {
        this.isTrial = isTrial;
    }

    public Integer getIsRenew() {
        return isRenew;
    }

    public void setIsRenew(Integer isRenew) {
        this.isRenew = isRenew;
    }

    public Date getContractRemoveTime() {
        return contractRemoveTime;
    }

    public void setContractRemoveTime(Date contractRemoveTime) {
        this.contractRemoveTime = contractRemoveTime;
    }
}