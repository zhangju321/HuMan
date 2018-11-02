package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_filter;
import zj.entity.Hr_recruit_recruitment;

public interface Hr_recruitmentMapper {
	public List<Map<String,Object>> QueryAll();
	public int Save(Hr_recruit_recruitment recru);
	public List<Map<String,Object>> QueryId(int recruitmentId);
	public int Update(Hr_recruit_recruitment recru);
	public int Delete(int recruitmentId);
	public List<Map<String,Object>> Queryfilter(Hr_recruit_filter filter);
}