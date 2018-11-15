package zj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Vocation;

public interface GoOutMapper {
	//�����ѯ
	  public List<Map> queryAll();
	//ְ����ѯ
		public List<Map> findAll();
	//δ������ѯ  
	    public List<Map> notApproved();
	//����Ǽ�
	    public int insert(GoOut g);
	  //�޸�״̬
	    public void updateStatu(GoOut statu);
	    public void updateStatu2(GoOut statu);
	  //����id��ѯ
	    /*public GoOut queryById(int out_Id);*/	
	    public List<Map<String,Object>> queryDetails(int out_Id);
	    public List<Map> queryStaff3(int sta_Staff_Id);
	    public GoOut queryId(int out_Id);
    }