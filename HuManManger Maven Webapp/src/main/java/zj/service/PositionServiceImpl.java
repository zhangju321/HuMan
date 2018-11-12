package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.PositionMapper;
@Service
public class PositionServiceImpl implements PositionService {
	@Autowired
	private PositionMapper dao;
	@Override
	public List<Map<String,Object>> select(int departmentId) {
		System.out.println(departmentId);
		return dao.select(departmentId);
	}
}
