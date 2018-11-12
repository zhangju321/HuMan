package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Position;

public interface PositionMapper {
	public List<Map<String,Object>> select(int id);
    int deleteByPrimaryKey(Integer positionid);

    int insert(Position record);

    int insertSelective(Position record);

    Position selectByPrimaryKey(Integer positionid);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
}