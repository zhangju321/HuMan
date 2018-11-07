package zj.entity;

import java.util.List;

public class Department {
    private Integer departmentId;

    private String departmentName;
    private List<Hr_recruit_plan> plan;
    
	

	public List<Hr_recruit_plan> getPlan() {
		return plan;
	}

	public void setPlan(List<Hr_recruit_plan> plan) {
		this.plan = plan;
	}

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

    
}