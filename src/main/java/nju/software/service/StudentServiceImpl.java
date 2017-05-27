package nju.software.service;

import nju.software.dao.StudentDao;
import nju.software.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ZhangYF on 2017/5/26.
 */
@Service(value = "studentService")
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDao studentDao;

    public Student getStudent(int studentid) {
        return studentDao.findOne(studentid);
    }
}
