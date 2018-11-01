package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_recruit_plan;

public interface hr_planMapper {
	public List<Map<String,Object>> QueryAll();
	public int Save(hr_recruit_plan plan);
	public List<Map<String,Object>> QueryId(int planNo);
	public int Update(hr_recruit_plan plan);
	public int Delete(int planNo);
	public List<Map<String,Object>> Querystatus(int planStatus);
	public int oneupdate(int planNo);
	public int twoupdate(int planNo);
}
