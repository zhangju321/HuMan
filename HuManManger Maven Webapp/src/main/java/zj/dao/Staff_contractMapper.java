package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_contract;
import zj.entity.Staff_info;

public interface Staff_contractMapper {
	//添加合同
	public int insert(Staff_contract contract);
	//删除
	public int delete(int contractId);
	//查询合同信息
	public List<Map<String,Object>> selectcontract();
	//查询合同到期信息
	public List<Map<String,Object>> hetongdaoqi();
	//查询试用到期信息
	public List<Map<String,Object>> shiyongdaoqi();
    //修改前查询
	public Staff_contract selectByID(int contractId);
	//修改
	public int update(Staff_contract contract);
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//修改合同状态  使用中
	public int updatestatus1(int contractId);
	//修改合同状态  试用到期
	public int updatestatus2();
	//修改合同状态  合同到期
	public int updatestatus3();
	//<!-- 修改  合同到期后续约  状态 -->
	public int updatestatus4();
	//<!-- 修改  试用到期后续约 状态 -->
	public int updatestatus5();

}