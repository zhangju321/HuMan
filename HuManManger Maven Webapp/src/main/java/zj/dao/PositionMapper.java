package zj.dao;

import zj.entity.Position;

public interface PositionMapper {
    int deleteByPrimaryKey(Integer positionid);

    int insert(Position record);

    int insertSelective(Position record);

    Position selectByPrimaryKey(Integer positionid);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
}