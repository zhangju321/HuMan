package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.hr_recruitmentMapper;
import zj.entity.hr_recruit_filter;
import zj.entity.hr_recruit_recruitment;
import zj.service.hr_recruitmentService;
@Service
public class hr_recruitmentServiceImpl implements hr_recruitmentService {
	@Autowired
	private hr_recruitmentMapper dao;
	@Override
	public List<Map<String, Object>> queryAll() {
		return dao.QueryAll();
	}
	@Override
	public List<Map<String, Object>> QueryId(int recruitmentId) {
		return dao.QueryId(recruitmentId);
	}
	@Override
	public int Update(hr_recruit_recruitment recru) {
		return dao.Update(recru);
	}
	@Override
	public int Delete(int recruitmentId) {
		return dao.Delete(recruitmentId);
	}
	@Override
	public int Save(hr_recruit_recruitment recru) {
         return dao.Save(recru);		
	}
	@Override
	public List<Map<String, Object>> Queryfilter(hr_recruit_filter filter) {
		return dao.Queryfilter(filter);
	}

}
