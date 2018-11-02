package zj.entity;

import java.util.Date;

public class Staff_info {
	//员工id
    private int staff_id;
    //部门外键
    private int departmentId;
    //职务外键
    private int positionid;
    //员工姓名
    private String staffName;
    //在职状态 在职1 离职2
    private int workStatus;

    private String STAFF_NAME;
	
	public int getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
	

	public String getSTAFF_NAME() {
		return STAFF_NAME;
	}

	public void setSTAFF_NAME(String sTAFF_NAME) {
		STAFF_NAME = sTAFF_NAME;
	}

	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public int getPositionid() {
		return positionid;
	}

	public void setPositionid(int positionid) {
		this.positionid = positionid;
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