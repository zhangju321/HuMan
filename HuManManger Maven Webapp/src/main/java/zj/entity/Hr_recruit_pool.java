package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Hr_recruit_pool {
    private Integer  EXPERT_ID;//应聘人id
    private Integer PLAN_NO;//计划编号
    private String POSITION;//应聘岗位
    private String EMPLOYEE_NAME;//应聘者姓名
    private String EMPLOYEE_SEX;//性别
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date EMPLOYEE_BIRTH;//出生日期
    private String EMPLOYEE_NATIVE_PLACE;//籍贯
    private String EMPLOYEE_DOMICILE_PLACE;//户口所在地
    private String EMPLOYEE_NATIONALITY;//民族
    private String EMPLOYEE_MARITAL_STATUS;//婚姻状况
    private String EMPLOYEE_POLITICAL_STATUS;//政治面貌
    private String EMPLOYEE_PHONE;//联系电话
    private String EMPLOYEE_EMAIL;//EMAIL
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date JOB_BEGINNING;//参见工作时间
    private String EMPLOYEE_HEALTH;//健康状况
    private String EMPLOYEE_HIGHEST_SCHOOL;//学历
    private String EMPLOYEE_HIGHEST_DEGREE;//学位
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date GRADUATION_DATE;//毕业时间
    private String GRADUATION_SCHOOL;//毕业学校
    private String EMPLOYEE_MAJOR;//专业
    private String COMPUTER_LEVEL;//计算机水平
    private String FOREIGN_LANGUAGE1;//外语语种1
    private String FOREIGN_LEVEL1;//外语水平1
    private String FOREIGN_LANGUAGE2;//外语语种2
    private String FOREIGN_LEVEL2;//外语水平2
    private String FOREIGN_LANGUAGE3;//外语语种3
    private String FOREIGN_LEVEL3;//外语水平3
    private String EMPLOYEE_SKILLS;//特长
    private String RESUME;//简历
    private String JOB_INTENSION;//期望从事职业
    private String CAREER_SKILLS;//职业技能
    private String WORK_EXPERIENCE;//工作经验
    private String PROJECT_EXPERIENCE;//项目经验
    private String ATTACHMENT_NAME;//附件名称
    private String RESIDENCE_PLACE;//现居住城市 
    private String JOB_CATEGORY;//期望工作性质   
    private String JOB_INDUSTRY;//期望从事行业  
    private String WORK_CITY;//期望工作城市    
    private String EXPECTED_SALARY;//期望薪水    
    private String START_WORKING;//到岗时间   
    private String PHOTO_NAME;//照片附件名称  
    private String EMPLOYEE_AGE;//年龄 
    private String WHETHER_BY_SCREENING;//是否通过筛  
    private String RECRU_CHANNEL;//招聘渠道
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date RUKUTIME;//入库时间
    private Hr_recruit_plan hrreplan;
    
	
	public Date getRUKUTIME() {
		return RUKUTIME;
	}
	public void setRUKUTIME(Date rUKUTIME) {
		RUKUTIME = rUKUTIME;
	}
	public Integer getEXPERT_ID() {
		return EXPERT_ID;
	}
	public void setEXPERT_ID(Integer eXPERT_ID) {
		EXPERT_ID = eXPERT_ID;
	}
	public Integer getPLAN_NO() {
		return PLAN_NO;
	}
	public void setPLAN_NO(Integer pLAN_NO) {
		PLAN_NO = pLAN_NO;
	}
	public String getPOSITION() {
		return POSITION;
	}
	public void setPOSITION(String pOSITION) {
		POSITION = pOSITION;
	}
	public String getEMPLOYEE_NAME() {
		return EMPLOYEE_NAME;
	}
	public void setEMPLOYEE_NAME(String eMPLOYEE_NAME) {
		EMPLOYEE_NAME = eMPLOYEE_NAME;
	}
	public String getEMPLOYEE_SEX() {
		return EMPLOYEE_SEX;
	}
	public void setEMPLOYEE_SEX(String eMPLOYEE_SEX) {
		EMPLOYEE_SEX = eMPLOYEE_SEX;
	}
	public Date getEMPLOYEE_BIRTH() {
		return EMPLOYEE_BIRTH;
	}
	public void setEMPLOYEE_BIRTH(Date eMPLOYEE_BIRTH) {
		EMPLOYEE_BIRTH = eMPLOYEE_BIRTH;
	}
	public String getEMPLOYEE_NATIVE_PLACE() {
		return EMPLOYEE_NATIVE_PLACE;
	}
	public void setEMPLOYEE_NATIVE_PLACE(String eMPLOYEE_NATIVE_PLACE) {
		EMPLOYEE_NATIVE_PLACE = eMPLOYEE_NATIVE_PLACE;
	}
	public String getEMPLOYEE_DOMICILE_PLACE() {
		return EMPLOYEE_DOMICILE_PLACE;
	}
	public void setEMPLOYEE_DOMICILE_PLACE(String eMPLOYEE_DOMICILE_PLACE) {
		EMPLOYEE_DOMICILE_PLACE = eMPLOYEE_DOMICILE_PLACE;
	}
	public String getEMPLOYEE_NATIONALITY() {
		return EMPLOYEE_NATIONALITY;
	}
	public void setEMPLOYEE_NATIONALITY(String eMPLOYEE_NATIONALITY) {
		EMPLOYEE_NATIONALITY = eMPLOYEE_NATIONALITY;
	}
	public String getEMPLOYEE_MARITAL_STATUS() {
		return EMPLOYEE_MARITAL_STATUS;
	}
	public void setEMPLOYEE_MARITAL_STATUS(String eMPLOYEE_MARITAL_STATUS) {
		EMPLOYEE_MARITAL_STATUS = eMPLOYEE_MARITAL_STATUS;
	}
	public String getEMPLOYEE_POLITICAL_STATUS() {
		return EMPLOYEE_POLITICAL_STATUS;
	}
	public void setEMPLOYEE_POLITICAL_STATUS(String eMPLOYEE_POLITICAL_STATUS) {
		EMPLOYEE_POLITICAL_STATUS = eMPLOYEE_POLITICAL_STATUS;
	}
	public String getEMPLOYEE_PHONE() {
		return EMPLOYEE_PHONE;
	}
	public void setEMPLOYEE_PHONE(String eMPLOYEE_PHONE) {
		EMPLOYEE_PHONE = eMPLOYEE_PHONE;
	}
	public String getEMPLOYEE_EMAIL() {
		return EMPLOYEE_EMAIL;
	}
	public void setEMPLOYEE_EMAIL(String eMPLOYEE_EMAIL) {
		EMPLOYEE_EMAIL = eMPLOYEE_EMAIL;
	}
	public Date getJOB_BEGINNING() {
		return JOB_BEGINNING;
	}
	public void setJOB_BEGINNING(Date jOB_BEGINNING) {
		JOB_BEGINNING = jOB_BEGINNING;
	}
	public String getEMPLOYEE_HEALTH() {
		return EMPLOYEE_HEALTH;
	}
	public void setEMPLOYEE_HEALTH(String eMPLOYEE_HEALTH) {
		EMPLOYEE_HEALTH = eMPLOYEE_HEALTH;
	}
	public String getEMPLOYEE_HIGHEST_SCHOOL() {
		return EMPLOYEE_HIGHEST_SCHOOL;
	}
	public void setEMPLOYEE_HIGHEST_SCHOOL(String eMPLOYEE_HIGHEST_SCHOOL) {
		EMPLOYEE_HIGHEST_SCHOOL = eMPLOYEE_HIGHEST_SCHOOL;
	}
	public String getEMPLOYEE_HIGHEST_DEGREE() {
		return EMPLOYEE_HIGHEST_DEGREE;
	}
	public void setEMPLOYEE_HIGHEST_DEGREE(String eMPLOYEE_HIGHEST_DEGREE) {
		EMPLOYEE_HIGHEST_DEGREE = eMPLOYEE_HIGHEST_DEGREE;
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
	public String getEMPLOYEE_MAJOR() {
		return EMPLOYEE_MAJOR;
	}
	public void setEMPLOYEE_MAJOR(String eMPLOYEE_MAJOR) {
		EMPLOYEE_MAJOR = eMPLOYEE_MAJOR;
	}
	public String getCOMPUTER_LEVEL() {
		return COMPUTER_LEVEL;
	}
	public void setCOMPUTER_LEVEL(String cOMPUTER_LEVEL) {
		COMPUTER_LEVEL = cOMPUTER_LEVEL;
	}
	public String getFOREIGN_LANGUAGE1() {
		return FOREIGN_LANGUAGE1;
	}
	public void setFOREIGN_LANGUAGE1(String fOREIGN_LANGUAGE1) {
		FOREIGN_LANGUAGE1 = fOREIGN_LANGUAGE1;
	}
	public String getFOREIGN_LEVEL1() {
		return FOREIGN_LEVEL1;
	}
	public void setFOREIGN_LEVEL1(String fOREIGN_LEVEL1) {
		FOREIGN_LEVEL1 = fOREIGN_LEVEL1;
	}
	public String getFOREIGN_LANGUAGE2() {
		return FOREIGN_LANGUAGE2;
	}
	public void setFOREIGN_LANGUAGE2(String fOREIGN_LANGUAGE2) {
		FOREIGN_LANGUAGE2 = fOREIGN_LANGUAGE2;
	}
	public String getFOREIGN_LEVEL2() {
		return FOREIGN_LEVEL2;
	}
	public void setFOREIGN_LEVEL2(String fOREIGN_LEVEL2) {
		FOREIGN_LEVEL2 = fOREIGN_LEVEL2;
	}
	public String getFOREIGN_LANGUAGE3() {
		return FOREIGN_LANGUAGE3;
	}
	public void setFOREIGN_LANGUAGE3(String fOREIGN_LANGUAGE3) {
		FOREIGN_LANGUAGE3 = fOREIGN_LANGUAGE3;
	}
	public String getFOREIGN_LEVEL3() {
		return FOREIGN_LEVEL3;
	}
	public void setFOREIGN_LEVEL3(String fOREIGN_LEVEL3) {
		FOREIGN_LEVEL3 = fOREIGN_LEVEL3;
	}
	public String getEMPLOYEE_SKILLS() {
		return EMPLOYEE_SKILLS;
	}
	public void setEMPLOYEE_SKILLS(String eMPLOYEE_SKILLS) {
		EMPLOYEE_SKILLS = eMPLOYEE_SKILLS;
	}
	public String getRESUME() {
		return RESUME;
	}
	public void setRESUME(String rESUME) {
		RESUME = rESUME;
	}
	public String getJOB_INTENSION() {
		return JOB_INTENSION;
	}
	public void setJOB_INTENSION(String jOB_INTENSION) {
		JOB_INTENSION = jOB_INTENSION;
	}
	public String getCAREER_SKILLS() {
		return CAREER_SKILLS;
	}
	public void setCAREER_SKILLS(String cAREER_SKILLS) {
		CAREER_SKILLS = cAREER_SKILLS;
	}
	public String getWORK_EXPERIENCE() {
		return WORK_EXPERIENCE;
	}
	public void setWORK_EXPERIENCE(String wORK_EXPERIENCE) {
		WORK_EXPERIENCE = wORK_EXPERIENCE;
	}
	public String getPROJECT_EXPERIENCE() {
		return PROJECT_EXPERIENCE;
	}
	public void setPROJECT_EXPERIENCE(String pROJECT_EXPERIENCE) {
		PROJECT_EXPERIENCE = pROJECT_EXPERIENCE;
	}
	public String getATTACHMENT_NAME() {
		return ATTACHMENT_NAME;
	}
	public void setATTACHMENT_NAME(String aTTACHMENT_NAME) {
		ATTACHMENT_NAME = aTTACHMENT_NAME;
	}
	public String getRESIDENCE_PLACE() {
		return RESIDENCE_PLACE;
	}
	public void setRESIDENCE_PLACE(String rESIDENCE_PLACE) {
		RESIDENCE_PLACE = rESIDENCE_PLACE;
	}
	public String getJOB_CATEGORY() {
		return JOB_CATEGORY;
	}
	public void setJOB_CATEGORY(String jOB_CATEGORY) {
		JOB_CATEGORY = jOB_CATEGORY;
	}
	public String getJOB_INDUSTRY() {
		return JOB_INDUSTRY;
	}
	public void setJOB_INDUSTRY(String jOB_INDUSTRY) {
		JOB_INDUSTRY = jOB_INDUSTRY;
	}
	public String getWORK_CITY() {
		return WORK_CITY;
	}
	public void setWORK_CITY(String wORK_CITY) {
		WORK_CITY = wORK_CITY;
	}
	public String getEXPECTED_SALARY() {
		return EXPECTED_SALARY;
	}
	public void setEXPECTED_SALARY(String eXPECTED_SALARY) {
		EXPECTED_SALARY = eXPECTED_SALARY;
	}
	public String getSTART_WORKING() {
		return START_WORKING;
	}
	public void setSTART_WORKING(String sTART_WORKING) {
		START_WORKING = sTART_WORKING;
	}
	public String getPHOTO_NAME() {
		return PHOTO_NAME;
	}
	public void setPHOTO_NAME(String pHOTO_NAME) {
		PHOTO_NAME = pHOTO_NAME;
	}
	public String getEMPLOYEE_AGE() {
		return EMPLOYEE_AGE;
	}
	public void setEMPLOYEE_AGE(String eMPLOYEE_AGE) {
		EMPLOYEE_AGE = eMPLOYEE_AGE;
	}
	public String getWHETHER_BY_SCREENING() {
		return WHETHER_BY_SCREENING;
	}
	public void setWHETHER_BY_SCREENING(String wHETHER_BY_SCREENING) {
		WHETHER_BY_SCREENING = wHETHER_BY_SCREENING;
	}
	public String getRECRU_CHANNEL() {
		return RECRU_CHANNEL;
	}
	public void setRECRU_CHANNEL(String rECRU_CHANNEL) {
		RECRU_CHANNEL = rECRU_CHANNEL;
	}
	public Hr_recruit_plan getHrreplan() {
		return hrreplan;
	}
	public void setHrreplan(Hr_recruit_plan hrreplan) {
		this.hrreplan = hrreplan;
	}
	public Hr_recruit_pool(Integer eXPERT_ID, Integer pLAN_NO, String pOSITION, String eMPLOYEE_NAME,
			String eMPLOYEE_SEX, Date eMPLOYEE_BIRTH, String eMPLOYEE_NATIVE_PLACE, String eMPLOYEE_DOMICILE_PLACE,
			String eMPLOYEE_NATIONALITY, String eMPLOYEE_MARITAL_STATUS, String eMPLOYEE_POLITICAL_STATUS,
			String eMPLOYEE_PHONE, String eMPLOYEE_EMAIL, Date jOB_BEGINNING, String eMPLOYEE_HEALTH,
			String eMPLOYEE_HIGHEST_SCHOOL, String eMPLOYEE_HIGHEST_DEGREE, Date gRADUATION_DATE,
			String gRADUATION_SCHOOL, String eMPLOYEE_MAJOR, String cOMPUTER_LEVEL, String fOREIGN_LANGUAGE1,
			String fOREIGN_LEVEL1, String fOREIGN_LANGUAGE2, String fOREIGN_LEVEL2, String fOREIGN_LANGUAGE3,
			String fOREIGN_LEVEL3, String eMPLOYEE_SKILLS, String rESUME, String jOB_INTENSION, String cAREER_SKILLS,
			String wORK_EXPERIENCE, String pROJECT_EXPERIENCE, String aTTACHMENT_NAME, String rESIDENCE_PLACE,
			String jOB_CATEGORY, String jOB_INDUSTRY, String wORK_CITY, String eXPECTED_SALARY, String sTART_WORKING,
			String pHOTO_NAME, String eMPLOYEE_AGE, String wHETHER_BY_SCREENING, String rECRU_CHANNEL,
			Hr_recruit_plan hrreplan) {
		super();
		EXPERT_ID = eXPERT_ID;
		PLAN_NO = pLAN_NO;
		POSITION = pOSITION;
		EMPLOYEE_NAME = eMPLOYEE_NAME;
		EMPLOYEE_SEX = eMPLOYEE_SEX;
		EMPLOYEE_BIRTH = eMPLOYEE_BIRTH;
		EMPLOYEE_NATIVE_PLACE = eMPLOYEE_NATIVE_PLACE;
		EMPLOYEE_DOMICILE_PLACE = eMPLOYEE_DOMICILE_PLACE;
		EMPLOYEE_NATIONALITY = eMPLOYEE_NATIONALITY;
		EMPLOYEE_MARITAL_STATUS = eMPLOYEE_MARITAL_STATUS;
		EMPLOYEE_POLITICAL_STATUS = eMPLOYEE_POLITICAL_STATUS;
		EMPLOYEE_PHONE = eMPLOYEE_PHONE;
		EMPLOYEE_EMAIL = eMPLOYEE_EMAIL;
		JOB_BEGINNING = jOB_BEGINNING;
		EMPLOYEE_HEALTH = eMPLOYEE_HEALTH;
		EMPLOYEE_HIGHEST_SCHOOL = eMPLOYEE_HIGHEST_SCHOOL;
		EMPLOYEE_HIGHEST_DEGREE = eMPLOYEE_HIGHEST_DEGREE;
		GRADUATION_DATE = gRADUATION_DATE;
		GRADUATION_SCHOOL = gRADUATION_SCHOOL;
		EMPLOYEE_MAJOR = eMPLOYEE_MAJOR;
		COMPUTER_LEVEL = cOMPUTER_LEVEL;
		FOREIGN_LANGUAGE1 = fOREIGN_LANGUAGE1;
		FOREIGN_LEVEL1 = fOREIGN_LEVEL1;
		FOREIGN_LANGUAGE2 = fOREIGN_LANGUAGE2;
		FOREIGN_LEVEL2 = fOREIGN_LEVEL2;
		FOREIGN_LANGUAGE3 = fOREIGN_LANGUAGE3;
		FOREIGN_LEVEL3 = fOREIGN_LEVEL3;
		EMPLOYEE_SKILLS = eMPLOYEE_SKILLS;
		RESUME = rESUME;
		JOB_INTENSION = jOB_INTENSION;
		CAREER_SKILLS = cAREER_SKILLS;
		WORK_EXPERIENCE = wORK_EXPERIENCE;
		PROJECT_EXPERIENCE = pROJECT_EXPERIENCE;
		ATTACHMENT_NAME = aTTACHMENT_NAME;
		RESIDENCE_PLACE = rESIDENCE_PLACE;
		JOB_CATEGORY = jOB_CATEGORY;
		JOB_INDUSTRY = jOB_INDUSTRY;
		WORK_CITY = wORK_CITY;
		EXPECTED_SALARY = eXPECTED_SALARY;
		START_WORKING = sTART_WORKING;
		PHOTO_NAME = pHOTO_NAME;
		EMPLOYEE_AGE = eMPLOYEE_AGE;
		WHETHER_BY_SCREENING = wHETHER_BY_SCREENING;
		RECRU_CHANNEL = rECRU_CHANNEL;
		this.hrreplan = hrreplan;
	}
	public Hr_recruit_pool() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "hr_recruit_pool [EXPERT_ID=" + EXPERT_ID + ", PLAN_NO=" + PLAN_NO + ", POSITION=" + POSITION
				+ ", EMPLOYEE_NAME=" + EMPLOYEE_NAME + ", EMPLOYEE_SEX=" + EMPLOYEE_SEX + ", EMPLOYEE_BIRTH="
				+ EMPLOYEE_BIRTH + ", EMPLOYEE_NATIVE_PLACE=" + EMPLOYEE_NATIVE_PLACE + ", EMPLOYEE_DOMICILE_PLACE="
				+ EMPLOYEE_DOMICILE_PLACE + ", EMPLOYEE_NATIONALITY=" + EMPLOYEE_NATIONALITY
				+ ", EMPLOYEE_MARITAL_STATUS=" + EMPLOYEE_MARITAL_STATUS + ", EMPLOYEE_POLITICAL_STATUS="
				+ EMPLOYEE_POLITICAL_STATUS + ", EMPLOYEE_PHONE=" + EMPLOYEE_PHONE + ", EMPLOYEE_EMAIL="
				+ EMPLOYEE_EMAIL + ", JOB_BEGINNING=" + JOB_BEGINNING + ", EMPLOYEE_HEALTH=" + EMPLOYEE_HEALTH
				+ ", EMPLOYEE_HIGHEST_SCHOOL=" + EMPLOYEE_HIGHEST_SCHOOL + ", EMPLOYEE_HIGHEST_DEGREE="
				+ EMPLOYEE_HIGHEST_DEGREE + ", GRADUATION_DATE=" + GRADUATION_DATE + ", GRADUATION_SCHOOL="
				+ GRADUATION_SCHOOL + ", EMPLOYEE_MAJOR=" + EMPLOYEE_MAJOR + ", COMPUTER_LEVEL=" + COMPUTER_LEVEL
				+ ", FOREIGN_LANGUAGE1=" + FOREIGN_LANGUAGE1 + ", FOREIGN_LEVEL1=" + FOREIGN_LEVEL1
				+ ", FOREIGN_LANGUAGE2=" + FOREIGN_LANGUAGE2 + ", FOREIGN_LEVEL2=" + FOREIGN_LEVEL2
				+ ", FOREIGN_LANGUAGE3=" + FOREIGN_LANGUAGE3 + ", FOREIGN_LEVEL3=" + FOREIGN_LEVEL3
				+ ", EMPLOYEE_SKILLS=" + EMPLOYEE_SKILLS + ", RESUME=" + RESUME + ", JOB_INTENSION=" + JOB_INTENSION
				+ ", CAREER_SKILLS=" + CAREER_SKILLS + ", WORK_EXPERIENCE=" + WORK_EXPERIENCE + ", PROJECT_EXPERIENCE="
				+ PROJECT_EXPERIENCE + ", ATTACHMENT_NAME=" + ATTACHMENT_NAME + ", RESIDENCE_PLACE=" + RESIDENCE_PLACE
				+ ", JOB_CATEGORY=" + JOB_CATEGORY + ", JOB_INDUSTRY=" + JOB_INDUSTRY + ", WORK_CITY=" + WORK_CITY
				+ ", EXPECTED_SALARY=" + EXPECTED_SALARY + ", START_WORKING=" + START_WORKING + ", PHOTO_NAME="
				+ PHOTO_NAME + ", EMPLOYEE_AGE=" + EMPLOYEE_AGE + ", WHETHER_BY_SCREENING=" + WHETHER_BY_SCREENING
				+ ", RECRU_CHANNEL=" + RECRU_CHANNEL + ", hrreplan=" + hrreplan + "]";
	}
	
	
    
}