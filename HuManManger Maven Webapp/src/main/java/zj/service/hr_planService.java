package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.hr_recruit_plan;

public interface hr_planService {
	public List<Map<String,Object>> Select();
    public int Save(hr_recruit_plan plan);
    public List<Map<String,Object>> QueryId(int planNo);
    public int Update(hr_recruit_plan plan);
    public int Delete(int planNo);
    public List<Map<String,Object>> Queryzero(int planStatus);
    public int oneupdae(int planNo);
    public int twoupdae(int planNo);

}
