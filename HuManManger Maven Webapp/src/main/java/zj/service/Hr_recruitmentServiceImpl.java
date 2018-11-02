package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Hr_recruitmentMapper;
import zj.entity.Hr_recruit_filter;
import zj.entity.Hr_recruit_recruitment;
import zj.service.Hr_recruitmentService;
@Service
public class Hr_recruitmentServiceImpl implements Hr_recruitmentService {
	@Autowired
	private Hr_recruitmentMapper dao;
	@Override
	public List<Map<String, Object>> queryAll() {
		return dao.QueryAll();
	}
	@Override
	public List<Map<String, Object>> QueryId(int recruitmentId) {
		return dao.QueryId(recruitmentId);
	}
	@Override
	public int Update(Hr_recruit_recruitment recru) {
		return dao.Update(recru);
	}
	@Override
	public int Delete(int recruitmentId) {
		return dao.Delete(recruitmentId);
	}
	@Override
	public int Save(Hr_recruit_recruitment recru) {
         return dao.Save(recru);		
	}
	@Override
	public List<Map<String, Object>> Queryfilter(Hr_recruit_filter filter) {
		return dao.Queryfilter(filter);
	}

}
