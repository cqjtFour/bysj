package com.cqfour.bysj.controller;

import com.cqfour.bysj.bean.Message;
import com.cqfour.bysj.bean.Student;
import com.cqfour.bysj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

/**
 * Created by HYHSG on 2018/5/12.
 */
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Value("${web.upload-path}")
    private String path;

    @RequestMapping("/createStudentResume")
    @ResponseBody
    public Message createStudentResume(Student student,HttpServletRequest request){
        Message message=new Message();
        studentService.updateStudent(student);
        Student student1;
        student1=studentService.getStudent(student.getXh());
        request.getSession().setAttribute("student",student1);
        message.setStatus("Success");
        message.setMsg("success");
        return message;
    }

    @RequestMapping("/uploadPicture")
    @ResponseBody
    public Message uploadPicture(@RequestParam("file")MultipartFile file, HttpServletRequest request){
        String fileName=String.valueOf(new Date().getTime());
        System.out.println("上传文件："+file);
        fileName+=new Random().nextLong();
        String url=path+"/"+fileName+".jpg";//图片保存的地址
        try (BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(new File(url)))) {
            outputStream.write(file.getBytes());
            outputStream.flush();
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        url="http://localhost:8080/"+fileName+".jpg";
        System.out.println("url： "+url);
        Message message=new Message();
        message.setStatus("url");
        message.setMsg(url);
        return message;
    }

    @RequestMapping("/updateResume")
    @ResponseBody
    public Student updateResume(Student student,HttpServletRequest request){
        String xh = student.getXh();
        int i=studentService.updateStudent(student);
        Student student1;
        student1=studentService.getStudent(xh);
        request.getSession().setAttribute("student",student1);
        return student1;
    }

  /*  @RequestMapping("/images")
    @ResponseBody
    public Message images(@RequestParam("file")MultipartFile file, HttpServletRequest request) throws IOException {
        System.out.println("图片："+file);
        String fileName=String.valueOf(new Date().getTime());
        fileName+=new Random().nextLong();
        String url="static/images/headPortrait/"+fileName+".jpg";//图片保存的地址C:\.....\xxx.jpg
        url=request.getServletContext().getRealPath(url);
        url=url.replace("webapp","resources");
        System.out.println("路径："+url);
        FileOutputStream fileOutputStream=new FileOutputStream(url);
        fileOutputStream.write(file.getBytes());
        fileOutputStream.close();
        Message message=new Message();
        message.setStatus("url");
        message.setMsg(url);
        return message;
    }*/
}
