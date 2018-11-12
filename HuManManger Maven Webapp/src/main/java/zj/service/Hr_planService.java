package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_plan;

public interface Hr_planService {
	public List<Map<String,Object>> Select();
    public int Save(Hr_recruit_plan plan);
    public List<Map<String,Object>> QueryId(int planNo);
    public int Update(Hr_recruit_plan plan);
    public int Delete(int planNo);
    public List<Map<String,Object>> Queryzero(Hr_recruit_plan plan);
    public int statusUpdae(Hr_recruit_plan plan);

    
}
