package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Springfestival;

public interface SpringfestivalService {
	//��ѯ
		public List<Map<String, Object>> sfFind();
	    //���
		public int saveOrUpdate(Springfestival sf);
		//ɾ��
		public int sfDelete(Springfestival sf);
		//����id��ѯ
		public Springfestival sfFindById(int SfId);
		//�������
		public List<Map<String, Object>> departFind();
}
