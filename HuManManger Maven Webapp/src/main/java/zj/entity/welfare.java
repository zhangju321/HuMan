package zj.entity;

import java.util.Date;

public class welfare {
    private Integer welfareid;

    private Integer projectId;

    private Integer staffId;

    private Integer departmentid;

    private String welfareType;

    private Date issueDate;

    private Double welfareMonery;

    private String tax;

    private String goods;

    private String remark;

    private String uploda;

    public Integer getWelfareid() {
        return welfareid;
    }

    public void setWelfareid(Integer welfareid) {
        this.welfareid = welfareid;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public String getWelfareType() {
        return welfareType;
    }

    public void setWelfareType(String welfareType) {
        this.welfareType = welfareType == null ? null : welfareType.trim();
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public Double getWelfareMonery() {
        return welfareMonery;
    }

    public void setWelfareMonery(Double welfareMonery) {
        this.welfareMonery = welfareMonery;
    }

    public String getTax() {
        return tax;
    }

    public void setTax(String tax) {
        this.tax = tax == null ? null : tax.trim();
    }

    public String getGoods() {
        return goods;
    }

    public void setGoods(String goods) {
        this.goods = goods == null ? null : goods.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getUploda() {
        return uploda;
    }

    public void setUploda(String uploda) {
        this.uploda = uploda == null ? null : uploda.trim();
    }
}