package zj.entity;


public class Travel {//出差
    private int travelId;

    private int staffId;

    private String travelPlace;

    private String startTime;//开始时间

    private String endTime;//结束时间

    private int travelDate;

    private String travelReason;

    private String examinePerson;

    private String circulate;

    private String statusName;

    private String operate;

	public int getTravelId() {
		return travelId;
	}

	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getTravelPlace() {
		return travelPlace;
	}

	public void setTravelPlace(String travelPlace) {
		this.travelPlace = travelPlace;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getTravelDate() {
		return travelDate;
	}

	public void setTravelDate(int travelDate) {
		this.travelDate = travelDate;
	}

	public String getTravelReason() {
		return travelReason;
	}

	public void setTravelReason(String travelReason) {
		this.travelReason = travelReason;
	}

	public String getExaminePerson() {
		return examinePerson;
	}

	public void setExaminePerson(String examinePerson) {
		this.examinePerson = examinePerson;
	}

	public String getCirculate() {
		return circulate;
	}

	public void setCirculate(String circulate) {
		this.circulate = circulate;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getOperate() {
		return operate;
	}

	public void setOperate(String operate) {
		this.operate = operate;
	}
    

 
}