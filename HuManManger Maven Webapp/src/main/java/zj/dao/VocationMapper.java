package zj.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;
import zj.entity.Staff_info;
import zj.entity.Vocation;

public interface VocationMapper {
	//��ٲ�ѯ
	  public List<Map> queryAll();
	//ְ����ѯ
		public List<Staff_info> findAll();
	//��ٵǼ�
	    public int save(Vocation v);
	//�������id��ѯ
	    public Vocation queryById(int vocation_Id);
	 //����Ա��id��ѯ
	    public List<Map> queryStaff(int sta_Staff_Id);   
	//ɾ��
	    public int delete(int vocation_Id);
	//�޸�״̬
	    public void updateStatu(Vocation statu);
	    public void updateStatu2(Vocation statu);
    
}