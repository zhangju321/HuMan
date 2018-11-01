package zj.dao;

import zj.entity.staff_info;
import zj.entity.staff_infoWithBLOBs;

public interface staff_infoMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(staff_infoWithBLOBs record);

    int insertSelective(staff_infoWithBLOBs record);

    staff_infoWithBLOBs selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(staff_infoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(staff_infoWithBLOBs record);

    int updateByPrimaryKey(staff_info record);
}