package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Staff_transfer;

public interface Staff_transferService {
	public List<Map<String, Object>> queryAll();//查询全部
	public List<Map<String, Object>> queryId(int TRANSFER_ID);//修改前查询
	public int update(Staff_transfer transfer);//修改
	public int delete(Staff_transfer transfer);//删除
	public int savetransfer(Staff_transfer transfer);//添加
	
	public List<Map<String, Object>> queryDe();//部门查询
	public List<Map<String, Object>> querySta();//人事查询
}
