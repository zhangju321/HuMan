package zj.entity;

import java.util.Date;

public class Staff_info {
    private Integer staffId;//Ա�����
    private Integer departmentId;//���ű��
    private Integer positionId;//ְ����
    private Integer STAFF_NO;//Ա������
    private String PHOTO_NAME;//��Ƭ�ļ���
    private String staffName;//Ա������
    private String STAFF_CARD_NO;//���֤
    private Integer STAFF_SEX;//�Ա�
    private Date STAFF_BIRTH;//��������
    private Integer STAFF_AGE;//����
    private String STAFF_NATIVE_PLACE;//����
    private String STAFF_NATIONALITY;//����
    private String STAFF_POLITICAL_STATUS;//������ò
    private Integer STAFF_PHONE;//��ϵ�绰
    private String STAFF_EMAIL;//����1
    private String HOME_ADDRESS;//��ͥסַ2
    private Date JOB_BEGINNING;//�μӹ���ʱ��
    private Integer WORK_AGE;//�ܹ���
    private String STAFF_HEALTH;//����״��
    private String STAFF_HIGHEST_SCHOOL;//���ѧ��
    private String STAFF_HIGHEST_DEGREE;//���ѧλ
    private Date GRADUATION_DATE;//��ҵʱ��
    private String GRADUATION_SCHOOL;//��ҵѧУ
    private String STAFF_MAJOR;//רҵ
    private String STAFF_SKILLS;//�س�
    private String STAFF_OCCUPATION;//Ա������
    private Date DATES_EMPLOYED;//��ְʱ��
    private Integer JOB_AGE;//����λ����
    private Date BEGIN_SALSRY_TIME;//��нʱ��
    private Integer workStatus;//��ְ״̬
    private Date STAFF_CS;//��ͬǩ��ʱ��1
    private Date STAFF_CTR;//��ͬ����ʱ��2
    private String STAFF_COMPANY;//���ڵ�λ1
    private String RESUME;//����
    private Date ADD_TIME;//����ʱ��2
    private String REMARK;//��ע
    private Integer ATTACHMENT_ID;//�������
    private String ATTACHMENT_NAME;//��������
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