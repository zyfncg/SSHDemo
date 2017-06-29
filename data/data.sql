DROP TABLE IF EXISTS student;
CREATE TABLE student (
  studentid int PRIMARY KEY,
  name char(255) NOT NULL,
  password char(20) NOT NULL,
  gender char(2) default '男'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO student(studentid,name,password) VALUES (10001,'test','123456');
INSERT INTO student VALUES (10002,'student2','123456','男');
INSERT INTO student VALUES (10003,'student3','123456','女');
INSERT INTO student VALUES (10004,'student4','123456','男');

DROP TABLE IF EXISTS course;
CREATE TABLE course (
  courseid int PRIMARY KEY,
  name char(255) NOT NULL,
  semester char(15),
  teacher char(20),
  credit int
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO course VALUES (30001,'大学英语','2016-2017 2','Zhou hua',4);
INSERT INTO course VALUES (30002,'微积分1','2016-2017 2','李明',4);
INSERT INTO course VALUES (30003,'微积分2','2016-2017 2','Bill',4);
INSERT INTO course VALUES (30004,'线性代数','2016-2017 2','Bill',4);
INSERT INTO course VALUES (30005,'概率论','2016-2017 2','Bill',4);
INSERT INTO course VALUES (30006,'解析几何','2016-2017 2','Jone',3);
INSERT INTO course VALUES (30007,'数论','2016-2017 2','Tony',3);
INSERT INTO course VALUES (30008,'信号与系统','2016-2017 2','刘景',3);
INSERT INTO course VALUES (30009,'数学史','2016-2017 2','王振国',2);
INSERT INTO course VALUES (30010,'大学物理','2016-2017 2','刘景',4);

DROP TABLE IF EXISTS stud_cour;
CREATE TABLE stud_cour (
  id int  AUTO_INCREMENT PRIMARY KEY,
  studentid int NOT NULL ,
  courseid int NOT NULL ,
  grade double,
  FOREIGN KEY (studentid) REFERENCES student(studentid),
  FOREIGN KEY (courseid) REFERENCES course(courseid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT = 500001;

INSERT INTO stud_cour(studentid, courseid) VALUES (10001,30001);
INSERT INTO stud_cour(studentid, courseid) VALUES (10001,30002);
INSERT INTO stud_cour(studentid, courseid) VALUES (10001,30003);
INSERT INTO stud_cour(studentid, courseid) VALUES (10002,30001);
INSERT INTO stud_cour(studentid, courseid) VALUES (10002,30002);