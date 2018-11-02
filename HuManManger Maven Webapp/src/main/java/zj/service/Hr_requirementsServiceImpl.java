package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Hr_requirementsMapper;
import zj.entity.Hr_recruit_requirements;
import zj.service.Hr_requirementsService;
@Service
public class Hr_requirementsServiceImpl implements Hr_requirementsService {
@Autowired
private Hr_requirementsMapper dao;
	@Override
	public List<Map<String,Object>> queryAll() {
		return dao.select();
	}
	@Override
	public List<Map<String,Object>> QueryId(int requId) {
		return dao.QueryId(requId);
	}
	@Override
	public int Update(Hr_recruit_requirements requ) {
		return dao.Update(requ);
	}
	@Override
	public int Delete(int requId) {
		return dao.Delete(requId);
	}
	@Override
	public int Save(Hr_recruit_requirements requ) {
		return dao.Save(requ);
	}
}
