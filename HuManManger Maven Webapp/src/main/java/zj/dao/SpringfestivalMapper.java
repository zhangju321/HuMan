package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Springfestival;

public interface SpringfestivalMapper {
	//��ѯ
	public List<Map<String, Object>> sfFind();
    //���
	public int sfSave(Springfestival sf);
	//ɾ��
	public int sfDelete(Springfestival sf);
	//�޸�
	public int sfUpdate(Springfestival sf);
	//����id��ѯ
	public Springfestival sfFindById(int sfId);
	//�������
	public List<Map<String, Object>> departFind();
}