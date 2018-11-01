package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.staff_leaveMapper;
import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_leave;

@Service
public class staff_leaveServiceImpl implements staff_leaveService {
	@Autowired
	private staff_leaveMapper mapper;

	@Override
	public int insertorupdate(staff_leave leave) {
		// TODO Auto-generated method stub
		
		//修改在职状态
		mapper.updateStatus(leave.getStaStaffId());
		//判断是修改还是添加
		if (leave.getLeaveId() != 0 && leave.getLeaveId() > 0) {

			return mapper.updateleave(leave);
		}
        //添到离职表的时候复职表数据删除
		mapper.delectId(leave.getStaStaffId());

		return mapper.insert(leave);
	}

	@Override
	public int deleteleave(int leaveId) {
		// TODO Auto-generated method stub
		return mapper.deleteleave(leaveId);
	}

	@Override
	public List<Map<String, Object>> selectleave() {
		// TODO Auto-generated method stub
		return mapper.selectleave();
	}

	@Override
	public staff_leave selectleaveByID(int leaveId) {
		// TODO Auto-generated method stub
		return mapper.selectleaveByID(leaveId);
	}

	@Override
	public List<staff_info> selectstaffinfo() {
		// TODO Auto-generated method stub
		return mapper.selectstaffinfo();
	}

	@Override
	public List<department> selectdepartment() {
		// TODO Auto-generated method stub
		return mapper.selectdepartment();
	}

	@Override
	public List<position> selectposition() {
		// TODO Auto-generated method stub
		return mapper.selectposition();
	}

	@Override
	public List<staff_info> selectinfostu() {
		// TODO Auto-generated method stub
		return mapper.selectinfostu();
	}

}
