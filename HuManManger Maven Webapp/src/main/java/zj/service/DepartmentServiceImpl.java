package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.DepartmentMapper;
import zj.dao.Hr_planMapper;
@Service
public class DepartmentServiceImpl implements DepartmentService {
	@Autowired
	private DepartmentMapper dao;
	@Override
	public List<Map<String, Object>> select() {
		return dao.select();
	}

}
