package zj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;

public interface GoOutMapper {
	//外出查询
	  public List<Map> queryAll();
	//职工查询
		public List<Staff_info> findAll();
	//外出登记
	    public int insert(GoOut g);
	  //修改状态
	    public void updateStatu(GoOut statu);
	    public void updateStatu2(GoOut statu);
	  //根据id查询
	    public GoOut queryById(int out_Id);
	    
	    public List<Map> queryStaff3(int sta_Staff_Id);
	
    }