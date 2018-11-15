package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.Welfare;

public interface WelfareDao {
 public List<Map<String,Object>> queryWelfare();//查询福利设置表
 public int welfSave(Welfare welf);//添加 
 public List<Map<String,Object>> queryDepar();//查询部门 人事
 public void welfDlete(Welfare welf);//删除
 public void welfUpdate(Welfare welf);//修改
 public List<Map<String,Object>> queryWelfare2(int id);//单条修改查询
 public List<Map<String,Object>> queryLike();//模糊查询员工福利信息
 public int querystaffid(int id);//单条查询人员 判断id是否重复
 public List<Map<String,Object>> queryTime(String issue_date);//根据时间查询工资

}
