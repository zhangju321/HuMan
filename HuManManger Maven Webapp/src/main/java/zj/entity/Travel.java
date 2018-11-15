package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Travel {
    private Integer travel_Id;
    private Integer sta_Staff_Id;
    private Integer staff_Id;

    private String travel_Place;
    //@DateTimeFormat(pattern="yyyy-MM-dd")
    private String start_Time;

    private String end_Time;

    private Integer travel_Date;

    private String travel_Reason;

    private String examine_Person;

    private String circulate;

    private String status_Name;

    private String operate;
    private Integer uid; 
    
    public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getTravel_Id() {
        return travel_Id;
    }

    public void setTravel_Id(Integer travel_Id) {
        this.travel_Id = travel_Id;
    }


	public Integer getSta_Staff_Id() {
		return sta_Staff_Id;
	}

	public void setSta_Staff_Id(Integer sta_Staff_Id) {
		this.sta_Staff_Id = sta_Staff_Id;
	}

	public Integer getStaff_Id() {
        return staff_Id;
    }

    public void setStaff_Id(Integer staff_Id) {
        this.staff_Id = staff_Id;
    }

    public String getTravel_Place() {
        return travel_Place;
    }

    public void setTravel_Place(String travel_Place) {
        this.travel_Place = travel_Place == null ? null : travel_Place.trim();
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

    public Integer getTravel_Date() {
        return travel_Date;
    }

    public void setTravel_Date(Integer travel_Date) {
        this.travel_Date = travel_Date;
    }

    public String getTravel_Reason() {
        return travel_Reason;
    }

    public void setTravel_Reason(String travel_Reason) {
        this.travel_Reason = travel_Reason == null ? null : travel_Reason.trim();
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

    public void setStatus_Name(String status_Name) {
        this.status_Name = status_Name == null ? null : status_Name.trim();
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate == null ? null : operate.trim();
    }
}