package zj.service;

import java.util.List;
import java.util.Map;

import zj.dao.Hr_recruit_poolMapper;
import zj.entity.Hr_recruit_plan;
import zj.entity.Hr_recruit_pool;

public interface Hr_recruit_poolService {
	public List<Map<String,Object>> queryAll();//��ѯȫ��
	public int savehrpool(Hr_recruit_pool pool);//���
	public int deletePool(Hr_recruit_pool pool);//ɾ��
	public List<Map<String,Object>>queryByid(int EXPERT_ID);//����id��ѯ
	public int updatePool(Hr_recruit_pool pool);//�޸�
	public List<Map<String,Object>> queryplan();//��Ƹ��ѯ
}
