package zj.dao;

import java.util.List;
import java.util.Map;
import zj.entity.Hr_recruit_requirements;

public interface Hr_requirementsMapper {
    public List<Map<String,Object>> select();
	public List<Map<String,Object>> QueryId(int requId);
	public int Update(Hr_recruit_requirements requ);
	public int Delete(int requId);
	public int Save(Hr_recruit_requirements requ);
}