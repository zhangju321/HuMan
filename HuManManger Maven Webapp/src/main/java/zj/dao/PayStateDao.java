package zj.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface PayStateDao {
	//查询薪资和审批人
 public List<Map<String,Object>> queryPay();
 //批量修改薪资计划状态(禁用)
 public int updateState(@Param("id")int id);
 //批量修改薪资计划状态(启用)
 public int updateState2(@Param("id")int id);
}
