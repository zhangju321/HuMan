package zj.entity;

import java.util.Date;

public class Staff_info {
    private Integer staffId;//员工编号
    private Integer departmentId;//部门编号
    private Integer positionId;//职务编号
    private Integer STAFF_NO;//员工工号
    private String PHOTO_NAME;//照片文件名
    private String staffName;//员工姓名
    private String STAFF_CARD_NO;//身份证
    private Integer STAFF_SEX;//性别
    private Date STAFF_BIRTH;//出生日期
    private Integer STAFF_AGE;//年龄
    private String STAFF_NATIVE_PLACE;//籍贯
    private String STAFF_NATIONALITY;//民族
    private String STAFF_POLITICAL_STATUS;//政治面貌
    private Integer STAFF_PHONE;//联系电话
    private String STAFF_EMAIL;//邮箱1
    private String HOME_ADDRESS;//家庭住址2
    private Date JOB_BEGINNING;//参加工作时间
    private Integer WORK_AGE;//总工龄
    private String STAFF_HEALTH;//健康状况
    private String STAFF_HIGHEST_SCHOOL;//最高学历
    private String STAFF_HIGHEST_DEGREE;//最高学位
    private Date GRADUATION_DATE;//毕业时间
    private String GRADUATION_SCHOOL;//毕业学校
    private String STAFF_MAJOR;//专业
    private String STAFF_SKILLS;//特长
    private String STAFF_OCCUPATION;//员工类型
    private Date DATES_EMPLOYED;//入职时间
    private Integer JOB_AGE;//本单位工龄
    private Date BEGIN_SALSRY_TIME;//起薪时间
    private Integer workStatus;//在职状态
    private Date STAFF_CS;//合同签订时间1
    private Date STAFF_CTR;//合同到期时间2
    private String STAFF_COMPANY;//所在单位1
    private String RESUME;//简历
    private Date ADD_TIME;//建档时间2
    private String REMARK;//备注
    private Integer ATTACHMENT_ID;//附件编号
    private String ATTACHMENT_NAME;//附件名称
    private int roleid;

	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	public Integer getPositionId() {
		return positionId;
	}
	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}
	public Integer getSTAFF_NO() {
		return STAFF_NO;
	}
	public void setSTAFF_NO(Integer sTAFF_NO) {
		STAFF_NO = sTAFF_NO;
	}
	public String getPHOTO_NAME() {
		return PHOTO_NAME;
	}
	public void setPHOTO_NAME(String pHOTO_NAME) {
		PHOTO_NAME = pHOTO_NAME;
	}
	
	public String getSTAFF_CARD_NO() {
		return STAFF_CARD_NO;
	}
	public void setSTAFF_CARD_NO(String sTAFF_CARD_NO) {
		STAFF_CARD_NO = sTAFF_CARD_NO;
	}
	public Integer getSTAFF_SEX() {
		return STAFF_SEX;
	}
	public void setSTAFF_SEX(Integer sTAFF_SEX) {
		STAFF_SEX = sTAFF_SEX;
	}
	public Date getSTAFF_BIRTH() {
		return STAFF_BIRTH;
	}
	public void setSTAFF_BIRTH(Date sTAFF_BIRTH) {
		STAFF_BIRTH = sTAFF_BIRTH;
	}
	public Integer getSTAFF_AGE() {
		return STAFF_AGE;
	}
	public void setSTAFF_AGE(Integer sTAFF_AGE) {
		STAFF_AGE = sTAFF_AGE;
	}
	public String getSTAFF_NATIVE_PLACE() {
		return STAFF_NATIVE_PLACE;
	}
	public void setSTAFF_NATIVE_PLACE(String sTAFF_NATIVE_PLACE) {
		STAFF_NATIVE_PLACE = sTAFF_NATIVE_PLACE;
	}
	public String getSTAFF_NATIONALITY() {
		return STAFF_NATIONALITY;
	}
	public void setSTAFF_NATIONALITY(String sTAFF_NATIONALITY) {
		STAFF_NATIONALITY = sTAFF_NATIONALITY;
	}
	public String getSTAFF_POLITICAL_STATUS() {
		return STAFF_POLITICAL_STATUS;
	}
	public void setSTAFF_POLITICAL_STATUS(String sTAFF_POLITICAL_STATUS) {
		STAFF_POLITICAL_STATUS = sTAFF_POLITICAL_STATUS;
	}
	public Integer getSTAFF_PHONE() {
		return STAFF_PHONE;
	}
	public void setSTAFF_PHONE(Integer sTAFF_PHONE) {
		STAFF_PHONE = sTAFF_PHONE;
	}
	public String getSTAFF_EMAIL() {
		return STAFF_EMAIL;
	}
	public void setSTAFF_EMAIL(String sTAFF_EMAIL) {
		STAFF_EMAIL = sTAFF_EMAIL;
	}
	public String getHOME_ADDRESS() {
		return HOME_ADDRESS;
	}
	public void setHOME_ADDRESS(String hOME_ADDRESS) {
		HOME_ADDRESS = hOME_ADDRESS;
	}
	public Date getJOB_BEGINNING() {
		return JOB_BEGINNING;
	}
	public void setJOB_BEGINNING(Date jOB_BEGINNING) {
		JOB_BEGINNING = jOB_BEGINNING;
	}
	public Integer getWORK_AGE() {
		return WORK_AGE;
	}
	public void setWORK_AGE(Integer wORK_AGE) {
		WORK_AGE = wORK_AGE;
	}
	public String getSTAFF_HEALTH() {
		return STAFF_HEALTH;
	}
	public void setSTAFF_HEALTH(String sTAFF_HEALTH) {
		STAFF_HEALTH = sTAFF_HEALTH;
	}
	public String getSTAFF_HIGHEST_SCHOOL() {
		return STAFF_HIGHEST_SCHOOL;
	}
	public void setSTAFF_HIGHEST_SCHOOL(String sTAFF_HIGHEST_SCHOOL) {
		STAFF_HIGHEST_SCHOOL = sTAFF_HIGHEST_SCHOOL;
	}
	public String getSTAFF_HIGHEST_DEGREE() {
		return STAFF_HIGHEST_DEGREE;
	}
	public void setSTAFF_HIGHEST_DEGREE(String sTAFF_HIGHEST_DEGREE) {
		STAFF_HIGHEST_DEGREE = sTAFF_HIGHEST_DEGREE;
	}
	public Date getGRADUATION_DATE() {
		return GRADUATION_DATE;
	}
	public void setGRADUATION_DATE(Date gRADUATION_DATE) {
		GRADUATION_DATE = gRADUATION_DATE;
	}
	public String getGRADUATION_SCHOOL() {
		return GRADUATION_SCHOOL;
	}
	public void setGRADUATION_SCHOOL(String gRADUATION_SCHOOL) {
		GRADUATION_SCHOOL = gRADUATION_SCHOOL;
	}
	public String getSTAFF_MAJOR() {
		return STAFF_MAJOR;
	}
	public void setSTAFF_MAJOR(String sTAFF_MAJOR) {
		STAFF_MAJOR = sTAFF_MAJOR;
	}
	public String getSTAFF_SKILLS() {
		return STAFF_SKILLS;
	}
	public void setSTAFF_SKILLS(String sTAFF_SKILLS) {
		STAFF_SKILLS = sTAFF_SKILLS;
	}
	public String getSTAFF_OCCUPATION() {
		return STAFF_OCCUPATION;
	}
	public void setSTAFF_OCCUPATION(String sTAFF_OCCUPATION) {
		STAFF_OCCUPATION = sTAFF_OCCUPATION;
	}
	public Date getDATES_EMPLOYED() {
		return DATES_EMPLOYED;
	}
	public void setDATES_EMPLOYED(Date dATES_EMPLOYED) {
		DATES_EMPLOYED = dATES_EMPLOYED;
	}
	public Integer getJOB_AGE() {
		return JOB_AGE;
	}
	public void setJOB_AGE(Integer jOB_AGE) {
		JOB_AGE = jOB_AGE;
	}
	public Date getBEGIN_SALSRY_TIME() {
		return BEGIN_SALSRY_TIME;
	}
	public void setBEGIN_SALSRY_TIME(Date bEGIN_SALSRY_TIME) {
		BEGIN_SALSRY_TIME = bEGIN_SALSRY_TIME;
	}
	
	public Date getSTAFF_CS() {
		return STAFF_CS;
	}
	public void setSTAFF_CS(Date sTAFF_CS) {
		STAFF_CS = sTAFF_CS;
	}
	public Date getSTAFF_CTR() {
		return STAFF_CTR;
	}
	public void setSTAFF_CTR(Date sTAFF_CTR) {
		STAFF_CTR = sTAFF_CTR;
	}
	public String getSTAFF_COMPANY() {
		return STAFF_COMPANY;
	}
	public void setSTAFF_COMPANY(String sTAFF_COMPANY) {
		STAFF_COMPANY = sTAFF_COMPANY;
	}
	public String getRESUME() {
		return RESUME;
	}
	public void setRESUME(String rESUME) {
		RESUME = rESUME;
	}
	public Date getADD_TIME() {
		return ADD_TIME;
	}
	public void setADD_TIME(Date aDD_TIME) {
		ADD_TIME = aDD_TIME;
	}
	public String getREMARK() {
		return REMARK;
	}
	public void setREMARK(String rEMARK) {
		REMARK = rEMARK;
	}
	public Integer getATTACHMENT_ID() {
		return ATTACHMENT_ID;
	}
	public void setATTACHMENT_ID(Integer aTTACHMENT_ID) {
		ATTACHMENT_ID = aTTACHMENT_ID;
	}
	public String getATTACHMENT_NAME() {
		return ATTACHMENT_NAME;
	}
	public void setATTACHMENT_NAME(String aTTACHMENT_NAME) {
		ATTACHMENT_NAME = aTTACHMENT_NAME;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public Integer getStaffId() {
		return staffId;
	}
	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public Integer getWorkStatus() {
		return workStatus;
	}
	public void setWorkStatus(Integer workStatus) {
		this.workStatus = workStatus;
	}
}