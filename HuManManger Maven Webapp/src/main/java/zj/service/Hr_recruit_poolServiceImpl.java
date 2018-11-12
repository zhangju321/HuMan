package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Hr_recruit_poolMapper;
import zj.entity.Hr_recruit_pool;
@Service
public class Hr_recruit_poolServiceImpl implements Hr_recruit_poolService{
	@Autowired
	private Hr_recruit_poolMapper mapper;

	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		return mapper.queryAll();
	}

	@Override
	public int savehrpool(Hr_recruit_pool pool) {
		// TODO Auto-generated method stub
		return mapper.savehrpool(pool);
	}

	@Override
	public int deletePool(Hr_recruit_pool pool) {
		// TODO Auto-generated method stub
		return mapper.deletePool(pool);
	}

	@Override
	public List<Map<String, Object>> queryByid(int EXPERT_ID) {
		// TODO Auto-generated method stub
		return mapper.queryByid(EXPERT_ID);
	}

	@Override
	public int updatePool(Hr_recruit_pool pool) {
		// TODO Auto-generated method stub
		return mapper.updatePool(pool);
	}

	@Override
	public List<Map<String, Object>> queryplan() {
		// TODO Auto-generated method stub
		return mapper.queryplan();
	}

}
	
