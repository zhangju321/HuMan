package zj.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zj.entity.Work_register;


public interface ExcleMapper {
	/**
	 * ����EXcle
	 * @param request
	 * @param response
	 * @return
	 */
	public	String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response);
	 /**
		 * ��ѯ
		 * @return
		 */
	/*public List<JobWork> selectAll(int id);*/
	public int saveWork(Work_register register);//���
}


