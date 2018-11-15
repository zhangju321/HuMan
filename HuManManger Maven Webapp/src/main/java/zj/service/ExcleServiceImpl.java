package zj.service;

import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import zj.dao.ExcleMapper;
import zj.entity.ExcelUtils;
import zj.entity.Work_register;
import zj.service.ExcleService;
import com.mysql.jdbc.StringUtils;
@Service
public class ExcleServiceImpl implements ExcleService{

	@Autowired
	private ExcleMapper em;
	
	public String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response){

		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;    

        

        MultipartFile file = multipartRequest.getFile("upfile");  

        if(file.isEmpty()){  

            try {

				throw new Exception("文件不存在！");

			} catch (Exception e) {

				e.printStackTrace();

			}  

        }  

          

        InputStream in =null;  

        try {
			in = file.getInputStream();

		} catch (IOException e) {

			e.printStackTrace();

		}  
		List<List<Object>> listob = null; 
		try {
			listob = new ExcelUtils().getBankListByExcel(in,file.getOriginalFilename());
			 for (int i = 0; i < listob.size(); i++) {  
		            List<Object> lo = listob.get(i);  
		           Work_register  vo = new Work_register(); 
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(0))))
		            		vo.setRegisterOrder(0);
						 /*else
								if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(1))))
									 vo.setAttendanceShould(1);*/
						/* 
						 else
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(2))))
							 vo.setAttendanceActual(2);   
						 else
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(3))))
							 vo.setRest(3);   
						 else
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(4))))
							 vo.setAbsenteeism(4);
						 else
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(5))))
							 vo.setLate(5);
						 else
						 if(StringUtils.isNullOrEmpty(String.valueOf(lo.get(6))))
							 vo.setEarlyRetreat(6);*/
						 else
				  			vo.setRegisterOrder(Integer.valueOf(String.valueOf(lo.get(0))));
						    vo.setAttendanceShould(Integer.valueOf(String.valueOf(lo.get(1))));
						    vo.setAttendanceActual(Integer.valueOf(String.valueOf(lo.get(2))));
						    vo.setRest(Integer.valueOf(String.valueOf(lo.get(3))));
						    vo.setAbsenteeism(Integer.valueOf(String.valueOf(lo.get(4))));
						    vo.setLate(Integer.valueOf(String.valueOf(lo.get(5))));
						    vo.setEarlyRetreat(Integer.valueOf(String.valueOf(lo.get(6))));
				            vo.setWorkOfftime1(String.valueOf(lo.get(7)));
				            vo.setWorkTime1(String.valueOf(lo.get(8)));
				            vo.setWorkTime2(String.valueOf(lo.get(9)));
				            vo.setWorkOfftime2(String.valueOf(lo.get(10)));
				            int num=em.saveWork(vo);
				            if(num>0){
				            	System.out.println("添加成功");
				            }else{
				            	System.out.println("添加失败");
				            }
				            
		        }           
		} catch (Exception e) {

			e.printStackTrace();

		}   
	    //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出  
        return "导入Excle表格成功";

	}

	@Override
	public int saveWork(Work_register register) {
		// TODO Auto-generated method stub
		return em.saveWork(register);
	}

	
}
