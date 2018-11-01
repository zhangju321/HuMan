package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.hr_requirementsMapper;
import zj.entity.hr_recruit_requirements;
import zj.service.hr_requirementsService;
@Service
public class hr_requirementsServiceImpl implements hr_requirementsService {
@Autowired
private hr_requirementsMapper dao;
	@Override
	public List<Map<String,Object>> queryAll() {
		return dao.select();
	}
	@Override
	public List<Map<String,Object>> QueryId(int requId) {
		return dao.QueryId(requId);
	}
	@Override
	public int Update(hr_recruit_requirements requ) {
		return dao.Update(requ);
	}
	@Override
	public int Delete(int requId) {
		return dao.Delete(requId);
	}
	@Override
	public int Save(hr_recruit_requirements requ) {
		return dao.Save(requ);
	}
}
