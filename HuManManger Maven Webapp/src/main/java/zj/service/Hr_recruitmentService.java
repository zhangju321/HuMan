package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_filter;
import zj.entity.Hr_recruit_recruitment;



public interface Hr_recruitmentService {
    public List<Map<String,Object>> queryAll();
    public List<Map<String,Object>> QueryId(int recruitmentId);
    public int Update(Hr_recruit_recruitment recru);
    public int Delete(int recruitmentId);
    public int Save(Hr_recruit_recruitment recru);
	public List<Map<String,Object>> Queryfilter(Hr_recruit_filter filter);

}
