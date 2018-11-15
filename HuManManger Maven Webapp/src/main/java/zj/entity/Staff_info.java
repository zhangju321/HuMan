package zj.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Staff_info {
    private Integer staffId;//员工编号
    private Integer departmentId;//部门编号
    private Integer rolesId;
	private Integer STAFF_NO;//员工工号
    private String staffName;//员工姓名
    private String STAFF_CARD_NO;//身份证
    private Integer STAFF_SEX;//性别
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date STAFF_BIRTH;//出生日期
    private Integer STAFF_AGE;//年龄
    private String STAFF_NATIVE_PLACE;//籍贯
    private String STAFF_NATIONALITY;//民族
    private String STAFF_POLITICAL_STATUS;//政治面貌
    private Integer STAFF_PHONE;//联系电话
    private String STAFF_EMAIL;//邮箱ATTACHMENT_NAME
    private String HOME_ADDRESS;//家庭住址
    private String STAFF_HIGHEST_SCHOOL;//最高学历
    private String STAFF_HIGHEST_DEGREE;//最高学位
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date GRADUATION_DATE;//毕业时间
    private String GRADUATION_SCHOOL;//毕业学校
    private String STAFF_MAJOR;//专业
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date DATES_EMPLOYED;//入职时间
    private Integer workStatus;//在职状态
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date STAFF_CS;//合同签订时间1
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date STAFF_CTR;//合同到期时间2
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date ADD_TIME;//建档时间2
    private String REMARK;//备注
    private Roles roles;
    private Department department;
    private Position position;
    private List<Work_register> registers;
	public Integer getRolesId() {
		return rolesId;
	}
	public void setRolesId(Integer rolesId) {
		this.rolesId = rolesId;
	}
	public Integer getStaffId() {
		return staffId;
	}
	public void setStaffId(Integer staffId) {
		this.staffId = staffId;
	}
	public Integer getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}
	public Integer getSTAFF_NO() {
		return STAFF_NO;
	}
	public void setSTAFF_NO(Integer sTAFF_NO) {
		STAFF_NO = sTAFF_NO;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
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
	public Date getDATES_EMPLOYED() {
		return DATES_EMPLOYED;
	}
	public void setDATES_EMPLOYED(Date dATES_EMPLOYED) {
		DATES_EMPLOYED = dATES_EMPLOYED;
	}
	public Integer getWorkStatus() {
		return workStatus;
	}
	public void setWorkStatus(Integer workStatus) {
		this.workStatus = workStatus;
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
	public Roles getRoles() {
		return roles;
	}
	public void setRoles(Roles roles) {
		this.roles = roles;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public List<Work_register> getRegisters() {
		return registers;
	}
	public void setRegisters(List<Work_register> registers) {
		this.registers = registers;
	}
}