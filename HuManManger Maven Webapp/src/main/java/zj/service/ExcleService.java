package zj.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import zj.entity.Work_register;


public interface ExcleService {
	/**
	 * 导入EXcle
	 * @param request
	 * @param response
	 * @return
	 */
	public	String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response);
	 /**
		 * 查询
		 * @return
		 */
	public int saveWork(Work_register register);//添加
}
