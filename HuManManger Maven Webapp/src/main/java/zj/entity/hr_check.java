package zj.entity;

public class hr_check {
    private Integer check_id;

    private Double early;

    private Double withhold;

    private Double absent;

    public Integer getCheck_id() {
		return check_id;
	}

	public void setCheck_id(Integer check_id) {
		this.check_id = check_id;
	}

	public Double getEarly() {
        return early;
    }

    public void setEarly(Double early) {
        this.early = early;
    }

    public Double getWithhold() {
        return withhold;
    }

    public void setWithhold(Double withhold) {
        this.withhold = withhold;
    }

    public Double getAbsent() {
        return absent;
    }

    public void setAbsent(Double absent) {
        this.absent = absent;
    }
}