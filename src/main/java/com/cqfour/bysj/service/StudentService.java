package com.cqfour.bysj.service;

import com.cqfour.bysj.bean.Discipline;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.bean.User;
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
import org.springframework.util.StringUtils;
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
}
