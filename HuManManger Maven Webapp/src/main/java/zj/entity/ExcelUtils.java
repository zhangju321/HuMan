package zj.entity;

import java.io.IOException;  

import java.io.InputStream;  

import java.math.BigDecimal;

 

import java.text.SimpleDateFormat;  

import java.util.ArrayList;  

import java.util.Date;

import java.util.List;  

  

import org.apache.poi.hssf.usermodel.HSSFDateUtil;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;  

import org.apache.poi.ss.usermodel.Cell;  

import org.apache.poi.ss.usermodel.Row;  

import org.apache.poi.ss.usermodel.Sheet;  

import org.apache.poi.ss.usermodel.Workbook;  

import org.apache.poi.xssf.usermodel.XSSFWorkbook;  

  

  

public class ExcelUtils {  

      

    private final static String excel2003L =".xls";    //2003- �汾��excel  

    private final static String excel2007U =".xlsx";   //2007+ �汾��excel  

      

    /** 

     * ��������ȡIO���е����ݣ���װ��List<List<Object>>���� 

     * @param in,fileName 

     * @return 

     * @throws IOException  

     */  

    public  List<List<Object>> getBankListByExcel(InputStream in,String fileName) throws Exception{  

        List<List<Object>> list = null;  

          

        //����Excel������  

        Workbook work = this.getWorkbook(in,fileName);  

        if(null == work){  

            throw new Exception("����Excel������Ϊ�գ�");  

        }  

        Sheet sheet = null;  //ҳ��

        Row row = null;  //����

        Cell cell = null;  //����

          

        list = new ArrayList<List<Object>>();  

        //����Excel�����е�sheet  

        for (int i = 0; i < work.getNumberOfSheets(); i++) {  

            sheet = work.getSheetAt(i);  

            if(sheet==null){continue;}  

              

            //������ǰsheet�е�������  
System.out.println("����:"+sheet.getLastRowNum());
            for (int j = sheet.getFirstRowNum(); j <= sheet.getLastRowNum(); j++) {  

                row = sheet.getRow(j);  

                if(row==null||row.getFirstCellNum()==j){continue;}  


                //�������е���  

                List<Object> li = new ArrayList<Object>();  

                for (int y = row.getFirstCellNum(); y < row.getLastCellNum(); y++) {  

                    cell = row.getCell(y);  

                    li.add(this.getValue(cell));  

                }  

                list.add(li);  

            }  

        }  

 

        return list;  

        

    }  

      

    /** 

     * �����������ļ���׺������Ӧ�ϴ��ļ��İ汾  

     * @param inStr,fileName 

     * @return 

     * @throws Exception 

     */  

    public  Workbook getWorkbook(InputStream inStr,String fileName) throws Exception{  

        Workbook wb = null;  

        String fileType = fileName.substring(fileName.lastIndexOf("."));  

        if(excel2003L.equals(fileType)){  

            wb = new HSSFWorkbook(inStr);  //2003-  

        }else if(excel2007U.equals(fileType)){  

            wb = new XSSFWorkbook(inStr);  //2007+  

        }else{  

            throw new Exception("�������ļ���ʽ����");  

        }  

        return wb;  

    }  

  

    /** 

     * �������Ա������ֵ���и�ʽ�� 

     * @param cell 

     * @return 

     */  

  //���excel�������⣬�����ֵ  

    public  String getValue(Cell cell) {  

        String value = "";  

        if(null==cell){  

            return value;  

        }  

        switch (cell.getCellType()) {  
    

        //��ֵ��  

        case Cell.CELL_TYPE_NUMERIC:  

            if (HSSFDateUtil.isCellDateFormatted(cell)) {  

                //�����date������ ����ȡ��cell��dateֵ  

                Date date = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());  

                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  

                value = format.format(date);;  

            }else {// ������  

                BigDecimal big=new BigDecimal(cell.getNumericCellValue());  

                value = big.toString();  

                //���1234.0  ȥ�������.0  

                if(null!=value&&!"".equals(value.trim())){  

                     String[] item = value.split("[.]");  

                     if(1<item.length&&"0".equals(item[1])){  

                         value=item[0];  

                     }  

                }  

            }  

            break;  

            //�ַ�������   

        case Cell.CELL_TYPE_STRING:  

            value = cell.getStringCellValue().toString();  

            break;  

        // ��ʽ����  

        case Cell.CELL_TYPE_FORMULA:  

            //����ʽ����ֵ  

            value = String.valueOf(cell.getNumericCellValue());  

            if (value.equals("NaN")) {// �����ȡ������ֵΪ�Ƿ�ֵ,��ת��Ϊ��ȡ�ַ���  

                value = cell.getStringCellValue().toString();  

            }  

            break;  

        // ��������  

        case Cell.CELL_TYPE_BOOLEAN:  

            value = " "+ cell.getBooleanCellValue();  

            break;   

        default:  

            value = cell.getStringCellValue().toString();  

    }  

    if("null".endsWith(value.trim())){  

        value="";  

    }  

  return value;  

    }  

      

  

}  

