package nju.software.dao;

import nju.software.model.Student;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by ZhangYF on 2017/5/26.
 */
@Repository
public interface StudentDao extends PagingAndSortingRepository<Student, Integer> {

}
