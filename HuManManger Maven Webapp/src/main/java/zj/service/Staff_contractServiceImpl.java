package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Staff_contractMapper;
import zj.entity.Staff_contract;
import zj.entity.Staff_info;
@Service
public class Staff_contractServiceImpl implements Staff_contractService{
	@Autowired
	private Staff_contractMapper mapper;

	@Override
	//添加和修改 修改合同状态
	public int insertandupdate(Staff_contract contract) {
		// TODO Auto-generated method stub
		//判断是修改还是添加
		if(contract.getContractId()!=0 && contract.getContractId()>0){
			return mapper.update(contract);
		}
		
		return mapper.insert(contract);
	}

	@Override
    //删除
	public int delete(int contractId) {
		// TODO Auto-generated method stub
		return mapper.delete(contractId);
	}

	@Override
	//查询合同信息
	public List<Map<String, Object>> selectcontract() {
		// TODO Auto-generated method stub
		return mapper.selectcontract();
	}

	@Override
	//修改前查询
	public Staff_contract selectByID(int contractId) {
		// TODO Auto-generated method stub
		return mapper.selectByID(contractId);
	}


	@Override
	//查询员工
	public List<Staff_info> selectstaffinfo() {
		// TODO Auto-generated method stub
		return mapper.selectstaffinfo();
	}



	

}
