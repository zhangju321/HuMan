package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_recruit_filter;


public interface hr_filterMapper {
	public int saveFilter(hr_recruit_filter filter);
	public List<Map<String,Object>> selectFilter();
	public List<Map<String,Object>> selectId(int filterId);
	public int updateFilter(hr_recruit_filter filter);
	public int oneUpdate(hr_recruit_filter filter);
	public int twoUpdate(hr_recruit_filter filter);
	public int Delete(int filterId);
}