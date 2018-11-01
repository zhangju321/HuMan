package zj.entity;

public class department {
    private Integer departmentId;

    private String departmentName;

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public department(Integer departmentId, String departmentName) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
	}

	public department() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "department [departmentId=" + departmentId + ", departmentName=" + departmentName + "]";
	}

	
}