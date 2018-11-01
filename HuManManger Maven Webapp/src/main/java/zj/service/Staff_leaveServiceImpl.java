package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Staff_leaveMapper;
import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;

@Service
public class Staff_leaveServiceImpl implements Staff_leaveService {
	@Autowired
	private Staff_leaveMapper mapper;

	@Override
	public int insertorupdate(Staff_leave leave) {
		// TODO Auto-generated method stub
		
		//�޸���ְ״̬
		mapper.updateStatus(leave.getStaStaffId());
		//�ж����޸Ļ������
		if (leave.getLeaveId() != 0 && leave.getLeaveId() > 0) {

			return mapper.updateleave(leave);
		}
        //����ְ���ʱ��ְ������ɾ��
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
	public Staff_leave selectleaveByID(int leaveId) {
		// TODO Auto-generated method stub
		return mapper.selectleaveByID(leaveId);
	}

	@Override
	public List<Staff_info> selectstaffinfo() {
		// TODO Auto-generated method stub
		return mapper.selectstaffinfo();
	}

	@Override
	public List<Department> selectdepartment() {
		// TODO Auto-generated method stub
		return mapper.selectdepartment();
	}

	@Override
	public List<Position> selectposition() {
		// TODO Auto-generated method stub
		return mapper.selectposition();
	}

	@Override
	public List<Staff_info> selectinfostu() {
		// TODO Auto-generated method stub
		return mapper.selectinfostu();
	}

}
