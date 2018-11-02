package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_check;
import zj.entity.Pay;
import zj.entity.Staff_info;

public interface PayDao {

 public List<Map<String,Object>> queryAll();//查询薪资(报表)
 public List<Map<String,Object>> queryPeo();//查询全部部门职务人员名称
 public List<Map<String,Object>> queryCheck();///查询薪资标准和考勤次数
 public List<Map<String,Object>> queryId(int id);//单条查询部门职务人员
 public int checkUpdate(hr_check check);//修改考勤扣款标准
 public List<hr_check> queryCheckid(int id);//单条查询check表
 public List<Map<String,Object>> queryAll2();//联合查询考勤统计和考勤扣款标准
 public List<Map<String, Object>> queryAll3();//报表
 
 public List<Map<String,Object>> queryPay();//查询薪资各个总额
 public int paySave(Pay pay);//添加薪资基数设置
 public int payUpdate(Pay pay);//修改薪资
 public void payDelete(Pay pay);//删除薪资
 public List<Map<String,Object>> queryPayId(int id);//查询单条详情
 public int queryStaffid(int id);//查询人员编号
 /*public int queryPay(int id);*///查询薪资表编号
}
