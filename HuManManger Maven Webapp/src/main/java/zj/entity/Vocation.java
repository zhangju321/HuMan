package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Vocation {
    private Integer vocation_Id;
    private Integer sta_Staff_Id;
    private Integer staff_Id;
    private String vocation_Reason;
    //@DateTimeFormat(pattern="yyyy-MM-dd") 
    private String vocation_Qi_Time;
    
    private String vocation_Jie_Time;

    private String vocation_Type;

    private String status_Name;

    private String examine_Person;

    private String circulate;

    private String operate;
    private Integer uid; 
    
    public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public void setVocation_Qi_Time(String vocation_Qi_Time) {
		this.vocation_Qi_Time = vocation_Qi_Time;
	}

	public Integer getVocation_Id() {
        return vocation_Id;
    }

    public void setVocation_Id(Integer vocation_Id) {
        this.vocation_Id = vocation_Id;
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

    public String getVocation_Reason() {
        return vocation_Reason;
    }

    public void setVocation_Reason(String vocation_Reason) {
        this.vocation_Reason = vocation_Reason == null ? null : vocation_Reason.trim();
    }

    public String getVocation_Qi_Time() {
        return vocation_Qi_Time;
    }

    public void setVocation_QiTime(String vocation_Qi_Time) {
        this.vocation_Qi_Time = vocation_Qi_Time;
    }

    public String getVocation_Jie_Time() {
        return vocation_Jie_Time;
    }

    public void setVocation_Jie_Time(String vocation_Jie_Time) {
        this.vocation_Jie_Time = vocation_Jie_Time;
    }

    public String getVocation_Type() {
        return vocation_Type;
    }

    public void setVocation_Type(String vocation_Type) {
        this.vocation_Type = vocation_Type == null ? null : vocation_Type.trim();
    }

    public String getStatus_Name() {
        return status_Name;
    }

    public void setStatus_Name(String status_Name) {
        this.status_Name = status_Name == null ? null : status_Name.trim();
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

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate == null ? null : operate.trim();
    }
}