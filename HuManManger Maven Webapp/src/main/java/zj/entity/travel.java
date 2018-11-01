package zj.entity;

import java.util.Date;

public class travel {
    private Integer travelId;

    private Integer staStaffId;

    private Integer staffId;

    private String travelPlace;

    private Date startTime;

    private Date endTime;

    private Integer travelDate;

    private String travelReason;

    private String examinePerson;

    private String circulate;

    private String statusName;

    private String operate;

    public Integer getTravelId() {
        return travelId;
    }

    public void setTravelId(Integer travelId) {
        this.travelId = travelId;
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

    public String getTravelPlace() {
        return travelPlace;
    }

    public void setTravelPlace(String travelPlace) {
        this.travelPlace = travelPlace == null ? null : travelPlace.trim();
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

    public Integer getTravelDate() {
        return travelDate;
    }

    public void setTravelDate(Integer travelDate) {
        this.travelDate = travelDate;
    }

    public String getTravelReason() {
        return travelReason;
    }

    public void setTravelReason(String travelReason) {
        this.travelReason = travelReason == null ? null : travelReason.trim();
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