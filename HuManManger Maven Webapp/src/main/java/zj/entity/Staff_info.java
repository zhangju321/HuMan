package zj.entity;

import java.util.Date;

public class Staff_info {
	//Ա��id
    private int staffId;
    //Ա������
    private String staffName;
    //��ְ״̬ ��ְ1 ��ְ2
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