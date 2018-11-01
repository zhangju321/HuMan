package zj.dao;

import zj.entity.staff_info;

public interface staff_infoMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(staff_info record);

    int insertSelective(staff_info record);

    staff_info selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(staff_info record);

    int updateByPrimaryKeyWithBLOBs(staff_info record);

    int updateByPrimaryKey(staff_info record);
}