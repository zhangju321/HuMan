
package zj.service;
import java.util.Date;
import java.util.List;
import java.util.Map;


import zj.entity.Staff_info;
import zj.entity.Vocation;

public interface VocationService {
	public List<Map> queryAll();
	public List<Staff_info> findAll();
	public int save(Vocation v);
	public Vocation queryById(int vocation_Id);
	public List<Map> queryStaff(int sta_Staff_Id);
    public void updateStatu(Vocation statu); 
    public void updateStatu2(Vocation statu);
    public int delete(int vocation_Id);
}