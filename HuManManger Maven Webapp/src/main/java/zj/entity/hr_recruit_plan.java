package zj.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class hr_recruit_plan {
    private Integer PLAN_NO;//计划编号
    private String PLAN_NAME;//计划名称
    private String RECRUIT_POSITION;//招聘岗位
    private String RECRUIT_DEPT;//招聘部门
    private String PLAN_RECR_NO;//招聘人数
    private String PLAN_DITCH;//招聘渠道
    private Double PLAN_BCWS;//预算费用
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date START_DATE;//开始日期
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date END_DATE;//结束日期
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date WORK_DATE;//用工日期
    private Double SALARY_AREA;//工资范围
    private String POSITION_REQUIRE;//岗位要求
    private String RECRUIT_DIRECTION;//招聘说明
    private String RECRUIT_REMARK;//招聘备注
    private String APPROVE_PERSON;//审批人
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date APPROVE_DATE;//审批日期
    private String APPROVE_COMMENT;//审批意见
    private Integer PLAN_STATUS;//计划状态
    private String ATTACHMENT_NAME;//附件名称 
    private List<hr_recruit_pool> hr_recruit_pool;
	public Integer getPLAN_NO() {
		return PLAN_NO;
	}
	public void setPLAN_NO(Integer pLAN_NO) {
		PLAN_NO = pLAN_NO;
	}
	public String getPLAN_NAME() {
		return PLAN_NAME;
	}
	public void setPLAN_NAME(String pLAN_NAME) {
		PLAN_NAME = pLAN_NAME;
	}
	public String getRECRUIT_POSITION() {
		return RECRUIT_POSITION;
	}
	public void setRECRUIT_POSITION(String rECRUIT_POSITION) {
		RECRUIT_POSITION = rECRUIT_POSITION;
	}
	public String getRECRUIT_DEPT() {
		return RECRUIT_DEPT;
	}
	public void setRECRUIT_DEPT(String rECRUIT_DEPT) {
		RECRUIT_DEPT = rECRUIT_DEPT;
	}
	public String getPLAN_RECR_NO() {
		return PLAN_RECR_NO;
	}
	public void setPLAN_RECR_NO(String pLAN_RECR_NO) {
		PLAN_RECR_NO = pLAN_RECR_NO;
	}
	public String getPLAN_DITCH() {
		return PLAN_DITCH;
	}
	public void setPLAN_DITCH(String pLAN_DITCH) {
		PLAN_DITCH = pLAN_DITCH;
	}
	public Double getPLAN_BCWS() {
		return PLAN_BCWS;
	}
	public void setPLAN_BCWS(Double pLAN_BCWS) {
		PLAN_BCWS = pLAN_BCWS;
	}
	public Date getSTART_DATE() {
		return START_DATE;
	}
	public void setSTART_DATE(Date sTART_DATE) {
		START_DATE = sTART_DATE;
	}
	public Date getEND_DATE() {
		return END_DATE;
	}
	public void setEND_DATE(Date eND_DATE) {
		END_DATE = eND_DATE;
	}
	public Date getWORK_DATE() {
		return WORK_DATE;
	}
	public void setWORK_DATE(Date wORK_DATE) {
		WORK_DATE = wORK_DATE;
	}
	public Double getSALARY_AREA() {
		return SALARY_AREA;
	}
	public void setSALARY_AREA(Double sALARY_AREA) {
		SALARY_AREA = sALARY_AREA;
	}
	public String getPOSITION_REQUIRE() {
		return POSITION_REQUIRE;
	}
	public void setPOSITION_REQUIRE(String pOSITION_REQUIRE) {
		POSITION_REQUIRE = pOSITION_REQUIRE;
	}
	public String getRECRUIT_DIRECTION() {
		return RECRUIT_DIRECTION;
	}
	public void setRECRUIT_DIRECTION(String rECRUIT_DIRECTION) {
		RECRUIT_DIRECTION = rECRUIT_DIRECTION;
	}
	public String getRECRUIT_REMARK() {
		return RECRUIT_REMARK;
	}
	public void setRECRUIT_REMARK(String rECRUIT_REMARK) {
		RECRUIT_REMARK = rECRUIT_REMARK;
	}
	public String getAPPROVE_PERSON() {
		return APPROVE_PERSON;
	}
	public void setAPPROVE_PERSON(String aPPROVE_PERSON) {
		APPROVE_PERSON = aPPROVE_PERSON;
	}
	public Date getAPPROVE_DATE() {
		return APPROVE_DATE;
	}
	public void setAPPROVE_DATE(Date aPPROVE_DATE) {
		APPROVE_DATE = aPPROVE_DATE;
	}
	public String getAPPROVE_COMMENT() {
		return APPROVE_COMMENT;
	}
	public void setAPPROVE_COMMENT(String aPPROVE_COMMENT) {
		APPROVE_COMMENT = aPPROVE_COMMENT;
	}
	public Integer getPLAN_STATUS() {
		return PLAN_STATUS;
	}
	public void setPLAN_STATUS(Integer pLAN_STATUS) {
		PLAN_STATUS = pLAN_STATUS;
	}
	public String getATTACHMENT_NAME() {
		return ATTACHMENT_NAME;
	}
	public void setATTACHMENT_NAME(String aTTACHMENT_NAME) {
		ATTACHMENT_NAME = aTTACHMENT_NAME;
	}
	public List<hr_recruit_pool> getHr_recruit_pool() {
		return hr_recruit_pool;
	}
	public void setHr_recruit_pool(List<hr_recruit_pool> hr_recruit_pool) {
		this.hr_recruit_pool = hr_recruit_pool;
	}
	public hr_recruit_plan(Integer pLAN_NO, String pLAN_NAME, String rECRUIT_POSITION, String rECRUIT_DEPT,
			String pLAN_RECR_NO, String pLAN_DITCH, Double pLAN_BCWS, Date sTART_DATE, Date eND_DATE, Date wORK_DATE,
			Double sALARY_AREA, String pOSITION_REQUIRE, String rECRUIT_DIRECTION, String rECRUIT_REMARK,
			String aPPROVE_PERSON, Date aPPROVE_DATE, String aPPROVE_COMMENT, Integer pLAN_STATUS,
			String aTTACHMENT_NAME, List<zj.entity.hr_recruit_pool> hr_recruit_pool) {
		super();
		PLAN_NO = pLAN_NO;
		PLAN_NAME = pLAN_NAME;
		RECRUIT_POSITION = rECRUIT_POSITION;
		RECRUIT_DEPT = rECRUIT_DEPT;
		PLAN_RECR_NO = pLAN_RECR_NO;
		PLAN_DITCH = pLAN_DITCH;
		PLAN_BCWS = pLAN_BCWS;
		START_DATE = sTART_DATE;
		END_DATE = eND_DATE;
		WORK_DATE = wORK_DATE;
		SALARY_AREA = sALARY_AREA;
		POSITION_REQUIRE = pOSITION_REQUIRE;
		RECRUIT_DIRECTION = rECRUIT_DIRECTION;
		RECRUIT_REMARK = rECRUIT_REMARK;
		APPROVE_PERSON = aPPROVE_PERSON;
		APPROVE_DATE = aPPROVE_DATE;
		APPROVE_COMMENT = aPPROVE_COMMENT;
		PLAN_STATUS = pLAN_STATUS;
		ATTACHMENT_NAME = aTTACHMENT_NAME;
		this.hr_recruit_pool = hr_recruit_pool;
	}
	public hr_recruit_plan() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "hr_recruit_plan [PLAN_NO=" + PLAN_NO + ", PLAN_NAME=" + PLAN_NAME + ", RECRUIT_POSITION="
				+ RECRUIT_POSITION + ", RECRUIT_DEPT=" + RECRUIT_DEPT + ", PLAN_RECR_NO=" + PLAN_RECR_NO
				+ ", PLAN_DITCH=" + PLAN_DITCH + ", PLAN_BCWS=" + PLAN_BCWS + ", START_DATE=" + START_DATE
				+ ", END_DATE=" + END_DATE + ", WORK_DATE=" + WORK_DATE + ", SALARY_AREA=" + SALARY_AREA
				+ ", POSITION_REQUIRE=" + POSITION_REQUIRE + ", RECRUIT_DIRECTION=" + RECRUIT_DIRECTION
				+ ", RECRUIT_REMARK=" + RECRUIT_REMARK + ", APPROVE_PERSON=" + APPROVE_PERSON + ", APPROVE_DATE="
				+ APPROVE_DATE + ", APPROVE_COMMENT=" + APPROVE_COMMENT + ", PLAN_STATUS=" + PLAN_STATUS
				+ ", ATTACHMENT_NAME=" + ATTACHMENT_NAME + ", hr_recruit_pool=" + hr_recruit_pool + "]";
	}
	
	
	
	}