package zj.service;

import java.util.List;
import java.util.Map;

public interface PayStateService {

	//根据时间查询工资
	public List<Map<String,Object>> queryTime(String tax_time);
	//查询薪资和审批人
	public List<Map<String,Object>> queryPay();
	//批量修改(禁用)
	public int updateState(String[] check_val);
	//批量修改(启用)
	public int updateState2(String[] check_val);
}
