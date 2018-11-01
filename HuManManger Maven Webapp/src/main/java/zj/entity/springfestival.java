package zj.entity;

public class springfestival {
    private Integer sfId;

    private Integer departmentid;

    private String sfname;

    private String sftime;

    private String sftimeend;

   
    public Integer getSfId() {
		return sfId;
	}

	public void setSfId(Integer sfId) {
		this.sfId = sfId;
	}

	public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public String getSfname() {
        return sfname;
    }

    public void setSfname(String sfname) {
        this.sfname = sfname == null ? null : sfname.trim();
    }

    public String getSftime() {
        return sftime;
    }

    public void setSftime(String sftime) {
        this.sftime = sftime == null ? null : sftime.trim();
    }

    public String getSftimeend() {
        return sftimeend;
    }

    public void setSftimeend(String sftimeend) {
        this.sftimeend = sftimeend == null ? null : sftimeend.trim();
    }
}