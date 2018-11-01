package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.hr_filterMapper;
import zj.entity.hr_recruit_filter;
import zj.service.hr_filterService;
@Service
public class hr_filterServiceImpl implements hr_filterService {
	@Autowired
	private hr_filterMapper dao;
	@Override
	public int saveFilter(hr_recruit_filter filter) {
		 return dao.saveFilter(filter);
	}
	@Override
	public List<Map<String, Object>> selectFilter() {
		return dao.selectFilter();
	}
	@Override
	public int updateFilter(hr_recruit_filter filter) {
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
	public int oneUpdate(hr_recruit_filter filter) {
		return dao.oneUpdate(filter);
	}
	@Override
	public int twoUpdate(hr_recruit_filter filter) {
		return dao.twoUpdate(filter);
	}

}
