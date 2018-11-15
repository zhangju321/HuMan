package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Staff_transfer;
import zj.service.Staff_transferService;

@Controller
@RequestMapping("/stfer")
public class Staff_transferController {
	@Autowired
	private Staff_transferService ser;
	//��ѯȫ��
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String, Object>> queryAll(){
		List<Map<String, Object>> list=ser.queryAll();
		return list;
		
	}
	//����id��ѯ������Ϣ
	@RequestMapping("/queryId")
	@ResponseBody
	public List<Map<String, Object>> queryId(@RequestBody int TRANSFER_ID){
		List<Map<String, Object>> list=ser.queryId(TRANSFER_ID);
		System.out.println(list.size());
		return list;
		
	}
	//�޸�
		@RequestMapping("/update")
		@ResponseBody
	public int update(Staff_transfer transfer){
			System.out.println(transfer.getLAST_UPDATE_TIME());
		return ser.update(transfer);
		
	}
		//ɾ��
		@RequestMapping("/delete")
		public void delete(Staff_transfer transfer){ 
			ser.delete(transfer);
		}
		//���
		@RequestMapping("/savetransfer")
		@ResponseBody
		public int savetransfer(Staff_transfer transfer){
			System.out.println(transfer);
			System.out.println(1);
			return ser.savetransfer(transfer);
		}
		//���Ų�ѯ
		@RequestMapping("/queryDe")
		@ResponseBody
		public List<Map<String, Object>> queryDe(){
			List<Map<String, Object>> list=ser.queryDe();
			return list;
		}
		//���²�ѯ
		@RequestMapping("/querySta")
		@ResponseBody
		public List<Map<String, Object>> querySta(){
			List<Map<String, Object>> list=ser.querySta();
			return list;
			
		}
}
