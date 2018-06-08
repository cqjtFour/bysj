package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.*;
import com.cqfour.bysj.mapper.StudentMapper;
import com.cqfour.bysj.mapper.UserMapper;
import com.cqfour.bysj.util.ExcelImportUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private DisciplineService disciplineService;

    @Autowired
    private UserMapper userMapper;

    /**
     * 返回所有的学生
     * @return
     */
    public List<Student> getAllStudent(){
        return studentMapper.selectAll();
    }

    /**
     * 模糊查询学生
     * @param param
     * @return
     */
    public List<Student> selectStudentByInput(String param){
        return studentMapper.queryStudentByInput(param);
    }

    public Student selectOneStudentByDLZH(String dlzh){
        return studentMapper.selectOneStudent(dlzh);
    }


    public List<Student> selectSomeStudent(String stuName,String stuNo){
        return studentMapper.querySomeStudent(stuName,stuNo);
    }

    /**
     * 上传excel文件到临时目录后并开始解析
     * @param fileName
     * @param
     * @return
     */
    public String batchImport(String fileName, MultipartFile mfile){

        File uploadDir = new  File("D:\\fileupload");
        //创建一个目录 （它的路径名由当前 File 对象指定，包括任一必须的父路径。）
        if (!uploadDir.exists()) uploadDir.mkdirs();
        //新建一个文件
        File tempFile = new File("D:\\fileupload\\" + new Date().getTime() + ".xlsx");
        //初始化输入流
        InputStream is = null;
        System.out.println("========================================================");
        try{
            System.out.println(tempFile);
            //将上传的文件写入新建的文件中
            mfile.transferTo(tempFile);

            //根据新建的文件实例化输入流
            is = new FileInputStream(tempFile);

            //根据版本选择创建Workbook的方式
            Workbook wb = null;
            //根据文件名判断文件是2003版本还是2007版本
            if(ExcelImportUtils.isExcel2007(fileName)){
                wb = new XSSFWorkbook(is);
            }else{
                wb = new HSSFWorkbook(is);
            }
            //根据excel里面的内容读取知识库信息
            return readExcelValue(wb,tempFile);
        }catch(Exception e){
            e.printStackTrace();
        } finally{
            if(is !=null)
            {
                try{
                    is.close();
                }catch(IOException e){
                    is = null;
                    e.printStackTrace();
                }
            }
        }
        return "导入出错！请检查数据格式！";
    }

    /**
     * 解析Excel里面的数据
     * @param wb
     * @return
     */
    private String readExcelValue(Workbook wb,File tempFile){
        //错误信息接收器
        String errorMsg = "";
        //得到第一个shell
        Sheet sheet=wb.getSheetAt(0);
        //得到Excel的行数
        int totalRows=sheet.getLastRowNum();
        List<Student> studentList=new ArrayList<>();
        List<User> users = new ArrayList<>();
        Student student ;
        User user;
        String br = "<br/>";

        //循环Excel行数,从第二行开始。标题不入库
        for(int r=1;r<=totalRows;r++){
            student = new Student();
            user = new User();
            Row row = sheet.getRow(r);
            if (row == null){
                errorMsg += br+"第"+(r+1)+"行数据有问题，请仔细检查！";
                continue;
            }
            student = new Student();
            String stuNo = "";
            if(row.getCell(0)!=null){
                row.getCell(0).setCellType(Cell.CELL_TYPE_STRING);
                stuNo = row.getCell(0).getStringCellValue();
            }
            String stuName = row.getCell(1).getStringCellValue();
            String zymc = row.getCell(2).getStringCellValue();
            Integer zybh = 0;
            for(Discipline discipline : disciplineService.selectAllWithFaculty()){
                if (discipline.getZymc().equals(zymc)){
                    zybh = discipline.getZybh();
                }
            }
            String dlzh = "";
            if(row.getCell(4)!=null){
                row.getCell(4).setCellType(Cell.CELL_TYPE_STRING);
                dlzh = row.getCell(4).getStringCellValue();
            }
            String dlmm = "";
            if(row.getCell(5)!=null){
                row.getCell(5).setCellType(Cell.CELL_TYPE_STRING);
                dlmm = row.getCell(5).getStringCellValue();
            }
            student.setXh(stuNo);
            student.setDlzh(dlzh);
            student.setZybh(zybh);
            user.setDlzh(dlzh);
            user.setDlmm(dlmm);
            users.add(user);
            userMapper.insertUser(user.getDlzh(),user.getDlmm());
            studentMapper.insertStudent(student.getXh(),stuName,student.getDlzh(),student.getZybh());
        }

        //删除上传的临时文件
        if(tempFile.exists()){
            tempFile.delete();
        }
        return errorMsg;
    }

    /**
     * 得到就业率信息
     * @param js
     * @return
     */
    public List<JiuYeLv> selectBigZaHui(String js){
        List<JiuYeLv> xyInfo = studentMapper.selectPart(js);
        List<JiuYeLv> qyInfo = studentMapper.selectPartqy(js);
        List<JiuYeLv> info= new ArrayList<>();
        boolean flag ;//标志在学院表中是否有签约表没有的的学院
        for(JiuYeLv jiuYeLv : xyInfo){
            flag = false;
            for(JiuYeLv qyjiuYeLv : qyInfo){
                if (jiuYeLv.getXymc().equals(qyjiuYeLv.getXymc())){
                    Double i = (qyjiuYeLv.getNum()/jiuYeLv.getNum())*100;
                    JiuYeLv jiuYeLv1 = new JiuYeLv();
                    jiuYeLv1.setNum(i);
                    jiuYeLv1.setXymc(jiuYeLv.getXymc());
                    info.add(jiuYeLv1);
                    flag = true;
                }
            }
            if (flag==false){
                JiuYeLv jiuYeLv1 = new JiuYeLv();
                jiuYeLv1.setNum(0.0);
                jiuYeLv1.setXymc(jiuYeLv.getXymc());
                info.add(jiuYeLv1);
            }

        }
        return info;
    }

    /**
     * 得到所有的毕业生签约信息
     * @return
     */
    public List<Student> selectBigZaHui(){
        return studentMapper.selectBigZaHui();
    }

    /**
     * 条件查询学生就业情况
     * @param year
     * @param collega
     * @param sure
     * @return
     */
    public List<Student> queryStudentWithSign(String year, Integer collega
            , Integer sure){
        return studentMapper.queryStudentWithSign(year,collega,sure);
    }

    /**
     * 通过届数查询学生
     * @param js
     * @return
     */
    public List<Student> selectStuentByJs(String js){
        return studentMapper.selectStuentByJs(js);
    }

    /**
     * 将学生就业信息导出excel的数据
     * @return
     */
    public List<JiuYeStudentInfo> studentInfoToExcel(String year, Integer collega
            , Integer sure){
        List<Student> studentList = queryStudentWithSign(year, collega, sure);
        List<JiuYeStudentInfo> list = new ArrayList<>();
        int i = 1;
        for(Student student : studentList){
            JiuYeStudentInfo jiuYeStudentInfo = new JiuYeStudentInfo();
            jiuYeStudentInfo.setId(String.valueOf(i));
            jiuYeStudentInfo.setStuNo(student.getXh());
            jiuYeStudentInfo.setStuName(student.getXsxm());
            jiuYeStudentInfo.setZy(student.getDiscipline().getZymc());
            jiuYeStudentInfo.setXy(student.getDiscipline().getFaculty().getXymc());
            if (student.getSign().getSfqdsf()==0){
                jiuYeStudentInfo.setSfqdsfxy("否");
            }else if (student.getSign().getSfqdsf()==1){
                jiuYeStudentInfo.setSfqdsfxy("是");
            }
            if (student.getSign().getSfsfsjjyc()==0){
                jiuYeStudentInfo.setSfsfsj("否");
            }else if (student.getSign().getSfsfsjjyc()==1){
                jiuYeStudentInfo.setSfsfsj("是");
            }
            if (student.getSign().getSfyhy()==0){
                jiuYeStudentInfo.setSfhy("否");
            }else if (student.getSign().getSfyhy()==1){
                jiuYeStudentInfo.setSfhy("是");
            }
            if (student.getSign().getXsfsflq()==0){
                jiuYeStudentInfo.setXsfsflq("否");
            }else if (student.getSign().getSfyhy()==1){
                jiuYeStudentInfo.setXsfsflq("是");
            }
            list.add(jiuYeStudentInfo);
            i++;
        }
        return list;
    }


    /**
     * 根据登录账号返回对应的学生
     *@return
     */
    public Student getStudent(String dlzh){ return  studentMapper.selectByPrimaryKey(dlzh);}

    /**
     * 创建学生简历
     *
     * */
    public int updateStudent(Student student){
        return  studentMapper.updateByPrimaryKeySelective(student);
    }

    /**
     * 获得学生姓名
     */
    public  String getStudentName(String xh){ return  studentMapper.getStudentName(xh);}


}
