package zj.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;
import zj.entity.Staff_info;
import zj.entity.Vocation;

public interface VocationMapper {
	//请假查询
	  public List<Map> queryAll();
	//职工查询
		public List<Staff_info> findAll();
	//请假登记
	    public int save(Vocation v);
	//根据请假id查询
	    public Vocation queryById(int vocation_Id);
	 //根据员工id查询
	    public List<Map> queryStaff(int sta_Staff_Id);   
	//删除
	    public int delete(int vocation_Id);
	//修改状态
	    public void updateStatu(Vocation statu);
	    public void updateStatu2(Vocation statu);
    
}