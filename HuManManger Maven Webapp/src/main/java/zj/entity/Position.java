package zj.entity;

import java.util.List;

public class Position {
    private Integer positionId;

    private Integer departmentId;

    private String positionName;
    private List<Hr_recruit_plan> plan;
	

	public List<Hr_recruit_plan> getPlan() {
		return plan;
	}

	public void setPlan(List<Hr_recruit_plan> plan) {
		this.plan = plan;
	}

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

    
}