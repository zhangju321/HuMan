package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class GoOut {
    private Integer out_Id;
    private Integer sta_Staff_Id;
    private Integer staff_Id;

    private String reason;
   // @DateTimeFormat(pattern="yyyy-MM-dd")
    private String out_Time;

    private String start_Time;

    private String end_Time;

    private String place;

    private String examine_Person;

    private String circulate;

    private String status_Name;

    private String operate;

    public Integer getOut_Id() {
        return out_Id;
    }

    public void setOut_Id(Integer out_Id) {
        this.out_Id = out_Id;
    }

    public Integer getStaff_Id() {
        return staff_Id;
    }

    public Integer getSta_Staff_Id() {
		return sta_Staff_Id;
	}

	public void setSta_Staff_Id(Integer sta_Staff_Id) {
		this.sta_Staff_Id = sta_Staff_Id;
	}

	public void setStaff_Id(Integer staff_Id) {
        this.staff_Id = staff_Id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getOut_Time() {
        return out_Time;
    }

    public void setOut_Time(String out_Time) {
        this.out_Time = out_Time;
    }

    public String getStart_Time() {
        return start_Time;
    }

    public void setStart_Time(String start_Time) {
        this.start_Time = start_Time;
    }

    public String getEnd_Time() {
        return end_Time;
    }

    public void setEnd_Time(String end_Time) {
        this.end_Time = end_Time;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getExamine_Person() {
        return examine_Person;
    }

    public void setExamine_Person(String examine_Person) {
        this.examine_Person = examine_Person == null ? null : examine_Person.trim();
    }

    public String getCirculate() {
        return circulate;
    }

    public void setCirculate(String circulate) {
        this.circulate = circulate == null ? null : circulate.trim();
    }

    public String getStatus_Name() {
        return status_Name;
    }

    public void setStatus_Name(String _) {
        this.status_Name = status_Name == null ? null : status_Name.trim();
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate == null ? null : operate.trim();
    }
}