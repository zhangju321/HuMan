
package zj.service;
import java.util.Date;
import java.util.List;
import java.util.Map;


import zj.entity.Staff_info;
import zj.entity.Vocation;

public interface VocationService {
	public List<Map> queryAll();
	public List<Map> findAll();
	public int save(Vocation v);	
	 public List<Map> notApproved();
	public List<Map<String,Object>> queryById(int vocation_Id);
	public List<Map> queryStaff(int sta_Staff_Id);
    public void updateStatu(Vocation statu); 
    public void updateStatu2(Vocation statu);
    public int delete(int vocation_Id);
    public Vocation queryId(int vocation_Id);
    public List<Map<String,Object>> UserName();
}
