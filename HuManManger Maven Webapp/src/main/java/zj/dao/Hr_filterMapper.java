package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Hr_recruit_filter;


public interface Hr_filterMapper {
	public int saveFilter(Hr_recruit_filter filter);
	public List<Map<String,Object>> selectFilter();
	public List<Map<String,Object>> selectId(int filterId);
	public int updateFilter(Hr_recruit_filter filter);
	public int oneUpdate(Hr_recruit_filter filter);
	public int twoUpdate(Hr_recruit_filter filter);
	public int Delete(int filterId);
}