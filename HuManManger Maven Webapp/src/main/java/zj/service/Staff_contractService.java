package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Staff_contract;
import zj.entity.Staff_info;

public interface Staff_contractService {
	@Transactional
	//添加和修改 修改合同状态
	public int insertandupdate(Staff_contract contract);
	//删除
	public int delete(int contractId);
	//查询合同信息
	public List<Map<String,Object>> selectcontract();
    //修改前查询
	public Staff_contract selectByID(int contractId);
    //查询员工
	public List<Staff_info> selectstaffinfo();
	//查询合同到期信息
	public List<Map<String,Object>> hetongdaoqi();
	//查询试用到期信息
	public List<Map<String,Object>> shiyongdaoqi();
/*	//修改合同状态  使用中
	public int updatestatus1(int contractId);
	//修改合同状态  试用到期
	public int updatestatus2(int contractId);
	//修改合同状态  合同到期
	public int updatestatus3(int contractId);*/

}
