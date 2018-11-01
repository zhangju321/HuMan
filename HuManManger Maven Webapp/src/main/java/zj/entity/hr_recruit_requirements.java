package zj.entity;

import java.util.Date;

public class hr_recruit_requirements {
    private Integer requirementsId;

    private Integer planNo;

    private String requDept;

    private String requJob;

    private Integer requNum;

    private String requRequires;

    private Date requTime;

    private String petitioner;

    private String remark;

    private String attachmentName;

    public Integer getRequirementsId() {
        return requirementsId;
    }

    public void setRequirementsId(Integer requirementsId) {
        this.requirementsId = requirementsId;
    }

    public Integer getPlanNo() {
        return planNo;
    }

    public void setPlanNo(Integer planNo) {
        this.planNo = planNo;
    }

    public String getRequDept() {
        return requDept;
    }

    public void setRequDept(String requDept) {
        this.requDept = requDept == null ? null : requDept.trim();
    }

    public String getRequJob() {
        return requJob;
    }

    public void setRequJob(String requJob) {
        this.requJob = requJob == null ? null : requJob.trim();
    }

    public Integer getRequNum() {
        return requNum;
    }

    public void setRequNum(Integer requNum) {
        this.requNum = requNum;
    }

    public String getRequRequires() {
        return requRequires;
    }

    public void setRequRequires(String requRequires) {
        this.requRequires = requRequires == null ? null : requRequires.trim();
    }

    public Date getRequTime() {
        return requTime;
    }

    public void setRequTime(Date requTime) {
        this.requTime = requTime;
    }

    public String getPetitioner() {
        return petitioner;
    }

    public void setPetitioner(String petitioner) {
        this.petitioner = petitioner == null ? null : petitioner.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName == null ? null : attachmentName.trim();
    }
}