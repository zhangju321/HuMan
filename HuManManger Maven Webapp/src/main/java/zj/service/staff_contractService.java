package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.staff_contract;
import zj.entity.staff_info;

public interface staff_contractService {
	@Transactional
	//添加和修改 修改合同状态
	public int insertandupdate(staff_contract contract);
	//删除
	public int delete(int contractId);
	//查询合同信息
	public List<Map<String,Object>> selectcontract();
    //修改前查询
	public staff_contract selectByID(int contractId);
    //查询员工
	public List<staff_info> selectstaffinfo();

}
