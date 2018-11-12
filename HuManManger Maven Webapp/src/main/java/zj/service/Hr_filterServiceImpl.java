package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Hr_filterMapper;
import zj.entity.Hr_recruit_filter;
import zj.service.Hr_filterService;
@Service
public class Hr_filterServiceImpl implements Hr_filterService {
	@Autowired
	private Hr_filterMapper dao;
	@Override
	public int saveFilter(Hr_recruit_filter filter) {
		 return dao.saveFilter(filter);
	}
	@Override
	public List<Map<String, Object>> selectFilter(int id) {
		return dao.selectFilter(id);
	}
	@Override
	public int updateFilter(Hr_recruit_filter filter) {
		// TODO Auto-generated method stub
		return dao.updateFilter(filter);
	}

	@Override
	public int Delete(int filterId) {
		// TODO Auto-generated method stub
		return dao.Delete(filterId);
	}
	@Override
	public List<Map<String, Object>> selectId(int filterId) {
		return dao.selectId(filterId);
	}
	@Override
	public int oneUpdate(Hr_recruit_filter filter) {
		return dao.oneUpdate(filter);
	}
	@Override
	public int twoUpdate(Hr_recruit_filter filter) {
		return dao.twoUpdate(filter);
	}
	@Override
	public List<Map<String, Object>> FilterName() {
		// TODO Auto-generated method stub
		return dao.FilterName();
	}
	@Override
	public List<Map<String, Object>> selectpool() {
		// TODO Auto-generated method stub
		return dao.selectpool();
	}
	@Override
	public List<Map<String, Object>> selectid(int expertId) {
		// TODO Auto-generated method stub
		return dao.selectid(expertId);
	}

}
