package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Work_register;

public interface Work_registerMapper {
	public List<Map<String, Object>> queryAll();//查询
	public int saveWork(Work_register register);//添加
	public List<Map<String, Object>> selectId(int work_id);//根据id查询
	public int updateWork(Work_register register);//修改
	public int deletework(Work_register register);//删除
	
	public List<Map<String, Object>> selectInfo();//人事
	public List<Map<String, Object>> slectDent();//部门
}
