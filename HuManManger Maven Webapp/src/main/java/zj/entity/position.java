package zj.entity;

public class position {
    private Integer positionid;

    private Integer departmentid;

    private String positionname;

	public Integer getPositionid() {
		return positionid;
	}

	public void setPositionid(Integer positionid) {
		this.positionid = positionid;
	}

	public Integer getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(Integer departmentid) {
		this.departmentid = departmentid;
	}

	public String getPositionname() {
		return positionname;
	}

	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}

	public position(Integer positionid, Integer departmentid, String positionname) {
		super();
		this.positionid = positionid;
		this.departmentid = departmentid;
		this.positionname = positionname;
	}

	public position() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "position [positionid=" + positionid + ", departmentid=" + departmentid + ", positionname="
				+ positionname + "]";
	}

   
}