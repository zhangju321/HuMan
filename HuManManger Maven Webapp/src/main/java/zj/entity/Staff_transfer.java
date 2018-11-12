package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import net.sf.jsqlparser.expression.DateTimeLiteralExpression.DateTime;

public class Staff_transfer {
	private int TRANSFER_ID;//调动编号
	private int	sta_staff_Id;//人事员工编号
	private int departmentId;//部门编号
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date TRANSFER_DATE;//调动日期
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date  TRANSFER_EFFECTIVE_DATE;//生效日期
	private int TRANSFER_TYPE;//类别
	private String TRAN_REASON;//原因
	private String  DESPACHO;//批示
	private String MATERIALS_CONDITION;//手续办理
	private String ATTACHMENT_NAME;//附件名称
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date ADD_TIME;//登记时间
	@DateTimeFormat(pattern="yyyy-MM-ddHH:mm:ss")
	private Date LAST_UPDATE_TIME;//最后修改时间
	private String DIAOQIAN;//调前
	private String DIAOHOU;//调后
	private Department department;
	private Staff_info info;
	public int getTRANSFER_ID() {
		return TRANSFER_ID;
	}
	public void setTRANSFER_ID(int tRANSFER_ID) {
		TRANSFER_ID = tRANSFER_ID;
	}
	public int getSta_staff_Id() {
		return sta_staff_Id;
	}
	public void setSta_staff_Id(int sta_staff_Id) {
		this.sta_staff_Id = sta_staff_Id;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public Date getTRANSFER_DATE() {
		return TRANSFER_DATE;
	}
	public void setTRANSFER_DATE(Date tRANSFER_DATE) {
		TRANSFER_DATE = tRANSFER_DATE;
	}
	public Date getTRANSFER_EFFECTIVE_DATE() {
		return TRANSFER_EFFECTIVE_DATE;
	}
	public void setTRANSFER_EFFECTIVE_DATE(Date tRANSFER_EFFECTIVE_DATE) {
		TRANSFER_EFFECTIVE_DATE = tRANSFER_EFFECTIVE_DATE;
	}
	public int getTRANSFER_TYPE() {
		return TRANSFER_TYPE;
	}
	public void setTRANSFER_TYPE(int tRANSFER_TYPE) {
		TRANSFER_TYPE = tRANSFER_TYPE;
	}
	public String getTRAN_REASON() {
		return TRAN_REASON;
	}
	public void setTRAN_REASON(String tRAN_REASON) {
		TRAN_REASON = tRAN_REASON;
	}
	public String getDESPACHO() {
		return DESPACHO;
	}
	public void setDESPACHO(String dESPACHO) {
		DESPACHO = dESPACHO;
	}
	public String getMATERIALS_CONDITION() {
		return MATERIALS_CONDITION;
	}
	public void setMATERIALS_CONDITION(String mATERIALS_CONDITION) {
		MATERIALS_CONDITION = mATERIALS_CONDITION;
	}
	public String getATTACHMENT_NAME() {
		return ATTACHMENT_NAME;
	}
	public void setATTACHMENT_NAME(String aTTACHMENT_NAME) {
		ATTACHMENT_NAME = aTTACHMENT_NAME;
	}
	public Date getADD_TIME() {
		return ADD_TIME;
	}
	public void setADD_TIME(Date aDD_TIME) {
		ADD_TIME = aDD_TIME;
	}
	public Date getLAST_UPDATE_TIME() {
		return LAST_UPDATE_TIME;
	}
	public void setLAST_UPDATE_TIME(Date lAST_UPDATE_TIME) {
		LAST_UPDATE_TIME = lAST_UPDATE_TIME;
	}
	public String getDIAOQIAN() {
		return DIAOQIAN;
	}
	public void setDIAOQIAN(String dIAOQIAN) {
		DIAOQIAN = dIAOQIAN;
	}
	public String getDIAOHOU() {
		return DIAOHOU;
	}
	public void setDIAOHOU(String dIAOHOU) {
		DIAOHOU = dIAOHOU;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Staff_info getInfo() {
		return info;
	}
	public void setInfo(Staff_info info) {
		this.info = info;
	}
}
