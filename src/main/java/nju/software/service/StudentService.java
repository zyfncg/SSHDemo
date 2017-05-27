package nju.software.service;

import nju.software.model.Student;
import org.springframework.stereotype.Service;

/**
 * Created by ZhangYF on 2017/5/26.
 */
@Service
public interface StudentService {
    public Student getStudent(int studentid);
}
