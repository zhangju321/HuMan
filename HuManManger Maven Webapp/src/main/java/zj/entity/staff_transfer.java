package zj.entity;

import java.util.Date;

public class staff_transfer {
    private Integer transferId;

    private Integer staStaffId;

    private Integer staffId;

    private Date transferDate;

    private Date transferEffectiveDate;

    private Integer transferType;

    private String tranReason;

    private String responsiblePerson;

    private String despacho;

    private String materialsCondition;

    private Integer attachmentId;

    private String attachmentName;

    private Date addTime;

    private Date lastUpdateTime;

    public Integer getTransferId() {
        return transferId;
    }

    public void setTransferId(Integer transferId) {
        this.transferId = transferId;
    }

    public Integer getStaStaffId() {
        return staStaffId;
    }

    public void setStaStaffId(Integer staStaffId) {
        this.staStaffId = staStaffId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Date getTransferDate() {
        return transferDate;
    }

    public void setTransferDate(Date transferDate) {
        this.transferDate = transferDate;
    }

    public Date getTransferEffectiveDate() {
        return transferEffectiveDate;
    }

    public void setTransferEffectiveDate(Date transferEffectiveDate) {
        this.transferEffectiveDate = transferEffectiveDate;
    }

    public Integer getTransferType() {
        return transferType;
    }

    public void setTransferType(Integer transferType) {
        this.transferType = transferType;
    }

    public String getTranReason() {
        return tranReason;
    }

    public void setTranReason(String tranReason) {
        this.tranReason = tranReason == null ? null : tranReason.trim();
    }

    public String getResponsiblePerson() {
        return responsiblePerson;
    }

    public void setResponsiblePerson(String responsiblePerson) {
        this.responsiblePerson = responsiblePerson == null ? null : responsiblePerson.trim();
    }

    public String getDespacho() {
        return despacho;
    }

    public void setDespacho(String despacho) {
        this.despacho = despacho == null ? null : despacho.trim();
    }

    public String getMaterialsCondition() {
        return materialsCondition;
    }

    public void setMaterialsCondition(String materialsCondition) {
        this.materialsCondition = materialsCondition == null ? null : materialsCondition.trim();
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
}