package zj.entity;

import java.util.Date;

public class Staff_info {
	//员工id
    private int staffId;
    //员工姓名
    private String staffName;
    //在职状态 在职1 离职2
    private int workStatus;

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public String getStaffName() {
		return staffName;
	}
	

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public int getWorkStatus() {
		return workStatus;
	}

	public void setWorkStatus(int workStatus) {
		this.workStatus = workStatus;
	}

  

}