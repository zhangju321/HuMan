package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.Staff_reinstatementMapper;
import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;

@Service
public class Staff_reinstatementServiceImpl implements Staff_reinstatementService{
	@Autowired
	private Staff_reinstatementMapper mapper;

	@Override
	public int deleteRein(int reinstatementId) {
		// TODO Auto-generated method stub
		return mapper.deleteRein(reinstatementId);
	}

	@Override
	public List<Map<String, Object>> selectRein() {
		// TODO Auto-generated method stub
		return mapper.selectRein();
	}

	@Override
	public Staff_reinstatement selectReinid(int reinstatementId) {
		// TODO Auto-generated method stub
		return mapper.selectReinid(reinstatementId);
	}

	@Override
	//修改 添加 修改在职状态
	public int insertorupdate(Staff_reinstatement Rein) {
		// TODO Auto-generated method stub

		//修改在职状态
        mapper.updateStatus(Rein.getStaffId());
        //判断修改还是添加
		if (Rein.getReinstatementId() != 0 && Rein.getReinstatementId() > 0) {
			return mapper.updateRein(Rein);
		}
        //添到复职表的时候离职表数据删除
        mapper.delectId(Rein.getStaffId());
		return mapper.insert(Rein);
		
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
