package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_plan;

public interface Hr_planMapper {
	public List<Map<String,Object>> QueryAll();
	public int Save(Hr_recruit_plan plan);
	public List<Map<String,Object>> QueryId(int planNo);
	public int Update(Hr_recruit_plan plan);
	public int Delete(int planNo);
	public List<Map<String,Object>> Querystatus(Hr_recruit_plan plan);
	public int statusUpdate(Hr_recruit_plan plan);
}
