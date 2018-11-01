package zj.dao;

import zj.entity.position;

public interface positionMapper {
    int deleteByPrimaryKey(Integer positionid);

    int insert(position record);

    int insertSelective(position record);

    position selectByPrimaryKey(Integer positionid);

    int updateByPrimaryKeySelective(position record);

    int updateByPrimaryKey(position record);
}