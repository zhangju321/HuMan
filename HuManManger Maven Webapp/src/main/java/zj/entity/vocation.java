package zj.entity;

import java.util.Date;

public class vocation {
    private Integer vocationId;

    private Integer staStaffId;

    private Integer staffId;

    private String vocationReason;

    private Date vocationQiTime;

    private Date vocationJieTime;

    private String vocationType;

    private String statusName;

    private String examinePerson;

    private String circulate;

    private String operate;

    public Integer getVocationId() {
        return vocationId;
    }

    public void setVocationId(Integer vocationId) {
        this.vocationId = vocationId;
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

    public String getVocationReason() {
        return vocationReason;
    }

    public void setVocationReason(String vocationReason) {
        this.vocationReason = vocationReason == null ? null : vocationReason.trim();
    }

    public Date getVocationQiTime() {
        return vocationQiTime;
    }

    public void setVocationQiTime(Date vocationQiTime) {
        this.vocationQiTime = vocationQiTime;
    }

    public Date getVocationJieTime() {
        return vocationJieTime;
    }

    public void setVocationJieTime(Date vocationJieTime) {
        this.vocationJieTime = vocationJieTime;
    }

    public String getVocationType() {
        return vocationType;
    }

    public void setVocationType(String vocationType) {
        this.vocationType = vocationType == null ? null : vocationType.trim();
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName == null ? null : statusName.trim();
    }

    public String getExaminePerson() {
        return examinePerson;
    }

    public void setExaminePerson(String examinePerson) {
        this.examinePerson = examinePerson == null ? null : examinePerson.trim();
    }

    public String getCirculate() {
        return circulate;
    }

    public void setCirculate(String circulate) {
        this.circulate = circulate == null ? null : circulate.trim();
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate == null ? null : operate.trim();
    }
}