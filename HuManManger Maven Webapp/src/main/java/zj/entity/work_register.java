package zj.entity;

import java.util.Date;

public class work_register {
    private Integer workId;

    private Integer staffId;

    private Integer departmentid;

    private Integer registerOrder;

    private String registerType;

    private Date setTime;

    private Integer registerIp;

    private Integer attendanceShould;

    private Integer attendanceActual;

    private Integer rest;

    private Integer absenteeism;

    private Integer late;

    private Integer workUnregistered;

    private Integer earlyRetreat;

    private Integer workOff;

    private Date workTime;

    private Date workOfftime;

    public Integer getWorkId() {
        return workId;
    }

    public void setWorkId(Integer workId) {
        this.workId = workId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public Integer getRegisterOrder() {
        return registerOrder;
    }

    public void setRegisterOrder(Integer registerOrder) {
        this.registerOrder = registerOrder;
    }

    public String getRegisterType() {
        return registerType;
    }

    public void setRegisterType(String registerType) {
        this.registerType = registerType == null ? null : registerType.trim();
    }

    public Date getSetTime() {
        return setTime;
    }

    public void setSetTime(Date setTime) {
        this.setTime = setTime;
    }

    public Integer getRegisterIp() {
        return registerIp;
    }

    public void setRegisterIp(Integer registerIp) {
        this.registerIp = registerIp;
    }

    public Integer getAttendanceShould() {
        return attendanceShould;
    }

    public void setAttendanceShould(Integer attendanceShould) {
        this.attendanceShould = attendanceShould;
    }

    public Integer getAttendanceActual() {
        return attendanceActual;
    }

    public void setAttendanceActual(Integer attendanceActual) {
        this.attendanceActual = attendanceActual;
    }

    public Integer getRest() {
        return rest;
    }

    public void setRest(Integer rest) {
        this.rest = rest;
    }

    public Integer getAbsenteeism() {
        return absenteeism;
    }

    public void setAbsenteeism(Integer absenteeism) {
        this.absenteeism = absenteeism;
    }

    public Integer getLate() {
        return late;
    }

    public void setLate(Integer late) {
        this.late = late;
    }

    public Integer getWorkUnregistered() {
        return workUnregistered;
    }

    public void setWorkUnregistered(Integer workUnregistered) {
        this.workUnregistered = workUnregistered;
    }

    public Integer getEarlyRetreat() {
        return earlyRetreat;
    }

    public void setEarlyRetreat(Integer earlyRetreat) {
        this.earlyRetreat = earlyRetreat;
    }

    public Integer getWorkOff() {
        return workOff;
    }

    public void setWorkOff(Integer workOff) {
        this.workOff = workOff;
    }

    public Date getWorkTime() {
        return workTime;
    }

    public void setWorkTime(Date workTime) {
        this.workTime = workTime;
    }

    public Date getWorkOfftime() {
        return workOfftime;
    }

    public void setWorkOfftime(Date workOfftime) {
        this.workOfftime = workOfftime;
    }
}