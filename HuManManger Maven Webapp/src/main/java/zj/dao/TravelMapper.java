package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Staff_info;
import zj.entity.Travel;


public interface TravelMapper {
	//�����ѯ
	  public List<Map> queryAll();
	//ְ����ѯ
		public List<Staff_info> findAll();
	//����Ǽ�
	    public int save(Travel t);
	  //�޸�״̬
	    public void updateStatu(Travel statu);
	    public void updateStatu2(Travel statu);
	  //����id��ѯ
	    public Travel queryById(int travel_Id);
	    public List<Map> queryStaff2(int sta_Staff_Id); 
}