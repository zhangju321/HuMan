package zj.entity;

public class Springfestival {
    private Integer sfId;

    /*private int departmentId;*/

    private String sfName;

    private String sfTime;

    private String sfTimeEnd;
    
    private String departId;

	public Integer getSfId() {
		return sfId;
	}

	public void setSfId(Integer sfId) {
		this.sfId = sfId;
	}

	

	/*public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}*/

	public String getDepartId() {
		return departId;
	}

	public void setDepartId(String departId) {
		this.departId = departId;
	}

	public String getSfName() {
		return sfName;
	}

	public void setSfName(String sfName) {
		this.sfName = sfName;
	}

	public String getSfTime() {
		return sfTime;
	}

	public void setSfTime(String sfTime) {
		this.sfTime = sfTime;
	}

	public String getSfTimeEnd() {
		return sfTimeEnd;
	}

	public void setSfTimeEnd(String sfTimeEnd) {
		this.sfTimeEnd = sfTimeEnd;
	}

   
}