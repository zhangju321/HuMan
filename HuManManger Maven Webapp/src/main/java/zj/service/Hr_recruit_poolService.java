package zj.service;

import java.util.List;
import java.util.Map;

import zj.dao.Hr_recruit_poolMapper;
import zj.entity.Hr_recruit_plan;
import zj.entity.Hr_recruit_pool;

public interface Hr_recruit_poolService {
	public List<Map<String,Object>> queryAll();
	public void savehrpool(Hr_recruit_pool pool);
	public void deletePool(Hr_recruit_pool pool);
	public Hr_recruit_pool queryByid(int EXPERT_ID);
	public void updatePool(Hr_recruit_pool pool);
	public List<Map<String,Object>> queryplan();
}
