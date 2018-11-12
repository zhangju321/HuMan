package zj.entity;

public class Pay {
	  private int payid;
	  private int project_id;
	  private int staff_id;
	  private int departmentId;
	  private int positionId;
	  private double tax_salary;
	  private double insurance;
	  private double endowment_insurance;
	  private double medical_insurance;
	  private double birth_insurance;
	  private double unemployment_insurance;
	  private double injury_insurance;
	  private double housing_fund;
	  private double B_withhold;
	  private double endowment_insurance_d;
	  private double medical_insurance_d;
	  private double birth_insurance_d;
	  private double unemployment_insurance_d;
	  private double injury_insurance_d;
	  private double housing_fund_d;
	  private double subvention;
	  private double Bonus;
	  private double K_withhold;
	  private double D_withhold;
	  private double after_tax_salary;
	  private String tax_time;
	  
	  

	private Staff_info staff;
	  private Department depar;
	  private Position position;
	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public int getStaff_id() {
		return staff_id;
	}
	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public int getPositionId() {
		return positionId;
	}
	public void setPositionId(int positionId) {
		this.positionId = positionId;
	}
	public double getTax_salary() {
		return tax_salary;
	}
	public void setTax_salary(double tax_salary) {
		this.tax_salary = tax_salary;
	}
	public double getInsurance() {
		return insurance;
	}
	public void setInsurance(double insurance) {
		this.insurance = insurance;
	}
	public double getEndowment_insurance() {
		return endowment_insurance;
	}
	public void setEndowment_insurance(double endowment_insurance) {
		this.endowment_insurance = endowment_insurance;
	}
	public double getMedical_insurance() {
		return medical_insurance;
	}
	public void setMedical_insurance(double medical_insurance) {
		this.medical_insurance = medical_insurance;
	}
	public double getBirth_insurance() {
		return birth_insurance;
	}
	public void setBirth_insurance(double birth_insurance) {
		this.birth_insurance = birth_insurance;
	}
	public double getUnemployment_insurance() {
		return unemployment_insurance;
	}
	public void setUnemployment_insurance(double unemployment_insurance) {
		this.unemployment_insurance = unemployment_insurance;
	}
	public double getInjury_insurance() {
		return injury_insurance;
	}
	public void setInjury_insurance(double injury_insurance) {
		this.injury_insurance = injury_insurance;
	}
	public double getHousing_fund() {
		return housing_fund;
	}
	public void setHousing_fund(double housing_fund) {
		this.housing_fund = housing_fund;
	}
	public double getB_withhold() {
		return B_withhold;
	}
	public void setB_withhold(double b_withhold) {
		B_withhold = b_withhold;
	}
	public double getEndowment_insurance_d() {
		return endowment_insurance_d;
	}
	public void setEndowment_insurance_d(double endowment_insurance_d) {
		this.endowment_insurance_d = endowment_insurance_d;
	}
	public double getMedical_insurance_d() {
		return medical_insurance_d;
	}
	public void setMedical_insurance_d(double medical_insurance_d) {
		this.medical_insurance_d = medical_insurance_d;
	}
	public double getBirth_insurance_d() {
		return birth_insurance_d;
	}
	public void setBirth_insurance_d(double birth_insurance_d) {
		this.birth_insurance_d = birth_insurance_d;
	}
	public double getUnemployment_insurance_d() {
		return unemployment_insurance_d;
	}
	public void setUnemployment_insurance_d(double unemployment_insurance_d) {
		this.unemployment_insurance_d = unemployment_insurance_d;
	}
	public double getInjury_insurance_d() {
		return injury_insurance_d;
	}
	public void setInjury_insurance_d(double injury_insurance_d) {
		this.injury_insurance_d = injury_insurance_d;
	}
	public double getHousing_fund_d() {
		return housing_fund_d;
	}
	public void setHousing_fund_d(double housing_fund_d) {
		this.housing_fund_d = housing_fund_d;
	}
	public double getSubvention() {
		return subvention;
	}
	public void setSubvention(double subvention) {
		this.subvention = subvention;
	}
	public double getBonus() {
		return Bonus;
	}
	public void setBonus(double bonus) {
		Bonus = bonus;
	}
	public double getK_withhold() {
		return K_withhold;
	}
	public void setK_withhold(double k_withhold) {
		K_withhold = k_withhold;
	}
	public double getD_withhold() {
		return D_withhold;
	}
	public void setD_withhold(double d_withhold) {
		D_withhold = d_withhold;
	}
	public double getAfter_tax_salary() {
		return after_tax_salary;
	}
	public void setAfter_tax_salary(double after_tax_salary) {
		this.after_tax_salary = after_tax_salary;
	}
	public String getTax_time() {
		return tax_time;
	}
	public void setTax_time(String tax_time) {
		this.tax_time = tax_time;
	}
	public Staff_info getStaff() {
		return staff;
	}
	public void setStaff(Staff_info staff) {
		this.staff = staff;
	}
	public Department getDepar() {
		return depar;
	}
	public void setDepar(Department depar) {
		this.depar = depar;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public Pay(int payid, int project_id, int staff_id, int departmentId, int positionId, double tax_salary,
			double insurance, double endowment_insurance, double medical_insurance, double birth_insurance,
			double unemployment_insurance, double injury_insurance, double housing_fund, double b_withhold,
			double endowment_insurance_d, double medical_insurance_d, double birth_insurance_d,
			double unemployment_insurance_d, double injury_insurance_d, double housing_fund_d, double subvention,
			double bonus, double k_withhold, double d_withhold, double after_tax_salary, String tax_time,
			Staff_info staff, Department depar, Position position) {
		super();
		this.payid = payid;
		this.project_id = project_id;
		this.staff_id = staff_id;
		this.departmentId = departmentId;
		this.positionId = positionId;
		this.tax_salary = tax_salary;
		this.insurance = insurance;
		this.endowment_insurance = endowment_insurance;
		this.medical_insurance = medical_insurance;
		this.birth_insurance = birth_insurance;
		this.unemployment_insurance = unemployment_insurance;
		this.injury_insurance = injury_insurance;
		this.housing_fund = housing_fund;
		B_withhold = b_withhold;
		this.endowment_insurance_d = endowment_insurance_d;
		this.medical_insurance_d = medical_insurance_d;
		this.birth_insurance_d = birth_insurance_d;
		this.unemployment_insurance_d = unemployment_insurance_d;
		this.injury_insurance_d = injury_insurance_d;
		this.housing_fund_d = housing_fund_d;
		this.subvention = subvention;
		Bonus = bonus;
		K_withhold = k_withhold;
		D_withhold = d_withhold;
		this.after_tax_salary = after_tax_salary;
		this.tax_time = tax_time;
		this.staff = staff;
		this.depar = depar;
		this.position = position;
	}
	public Pay() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Pay [payid=" + payid + ", project_id=" + project_id + ", staff_id=" + staff_id + ", departmentId="
				+ departmentId + ", positionId=" + positionId + ", tax_salary=" + tax_salary + ", insurance="
				+ insurance + ", endowment_insurance=" + endowment_insurance + ", medical_insurance="
				+ medical_insurance + ", birth_insurance=" + birth_insurance + ", unemployment_insurance="
				+ unemployment_insurance + ", injury_insurance=" + injury_insurance + ", housing_fund=" + housing_fund
				+ ", B_withhold=" + B_withhold + ", endowment_insurance_d=" + endowment_insurance_d
				+ ", medical_insurance_d=" + medical_insurance_d + ", birth_insurance_d=" + birth_insurance_d
				+ ", unemployment_insurance_d=" + unemployment_insurance_d + ", injury_insurance_d="
				+ injury_insurance_d + ", housing_fund_d=" + housing_fund_d + ", subvention=" + subvention + ", Bonus="
				+ Bonus + ", K_withhold=" + K_withhold + ", D_withhold=" + D_withhold + ", after_tax_salary="
				+ after_tax_salary + ", tax_time=" + tax_time + ", staff=" + staff + ", depar=" + depar + ", position="
				+ position + "]";
	}
  
}
