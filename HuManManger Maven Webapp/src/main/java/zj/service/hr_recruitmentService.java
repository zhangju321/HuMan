package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.hr_recruit_filter;
import zj.entity.hr_recruit_recruitment;



public interface hr_recruitmentService {
    public List<Map<String,Object>> queryAll();
    public List<Map<String,Object>> QueryId(int recruitmentId);
    public int Update(hr_recruit_recruitment recru);
    public int Delete(int recruitmentId);
    public int Save(hr_recruit_recruitment recru);
	public List<Map<String,Object>> Queryfilter(hr_recruit_filter filter);

}
