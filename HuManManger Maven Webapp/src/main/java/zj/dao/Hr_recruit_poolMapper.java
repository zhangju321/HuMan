package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_pool;

public interface Hr_recruit_poolMapper {
	public List<Map<String,Object>> queryAll();//查询全部
	public int savehrpool(Hr_recruit_pool pool);//添加
	public int deletePool(Hr_recruit_pool pool);//删除
	public List<Map<String,Object>>queryByid(int EXPERT_ID);//根据id查询
	public int updatePool(Hr_recruit_pool pool);//修改
	public List<Map<String,Object>> queryplan();//查询
	

}
