package zj.entity;

import java.util.Date;

public class hr_go_out {
    private Integer outId;

    private Integer staStaffId;

    private Integer staffId;

    private String reason;

    private Date outTime;

    private Date startTime;

    private Date endTime;

    private String place;

    private String examinePerson;

    private String circulate;

    private String statusName;

    private String operate;

    public Integer getOutId() {
        return outId;
    }

    public void setOutId(Integer outId) {
        this.outId = outId;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
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

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName == null ? null : statusName.trim();
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate == null ? null : operate.trim();
    }
}