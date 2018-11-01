package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.hr_recruit_requirements;


public interface hr_requirementsService {
    public List<Map<String,Object>> queryAll();
    public List<Map<String,Object>> QueryId(int requId);
    public int Update(hr_recruit_requirements requ);
    public int Delete(int requId);
    public int Save(hr_recruit_requirements requ);
}
