package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;

public interface DepartmentMapper {
	public List<Map<String,Object>> select();
    /*int deleteByPrimaryKey(Integer departmentid);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer departmentid);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);*/
}