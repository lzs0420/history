DROP TABLE Administrator;
CREATE TABLE Administrator (administratorID VARCHAR(20) COLLATE utf8_bin NOT NULL, name VARCHAR(20) COLLATE utf8_bin, password VARCHAR(20) COLLATE utf8_bin, state SMALLINT, CONSTRAINT PK_ADMINISTRATOR PRIMARY KEY (administratorID));
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0301', '徐发强', '007', 1);
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0302', '许文强', '007', 1);
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0303', '慎磊', '007', 1);
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0304', '吴玉', '007', 1);
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0305', '代娜', '007', 1);
INSERT INTO Administrator (administratorID, name, password, state) VALUES ('0306', '王建刚', '007', 0);
CREATE UNIQUE INDEX Administrator_PK ON Administrator (administratorID);
DROP TABLE College;
CREATE TABLE College (collegeID VARCHAR(20) COLLATE utf8_bin NOT NULL, collegeName VARCHAR(100) COLLATE utf8_bin, CONSTRAINT PK_COLLEGE PRIMARY KEY (collegeID));
INSERT INTO College (collegeID, collegeName) VALUES ('01', '信息工程学院');
INSERT INTO College (collegeID, collegeName) VALUES ('02', '水利与环境学院');
INSERT INTO College (collegeID, collegeName) VALUES ('03', '物理工程学院');
INSERT INTO College (collegeID, collegeName) VALUES ('04', '机械工程学院');
INSERT INTO College (collegeID, collegeName) VALUES ('05', '电气工程学院');
INSERT INTO College (collegeID, collegeName) VALUES ('06', '化工与能源学院');
INSERT INTO College (collegeID, collegeName) VALUES ('07', '土木工程学院');
INSERT INTO College (collegeID, collegeName) VALUES ('08', '文学院');
INSERT INTO College (collegeID, collegeName) VALUES ('09', '历史学院');
INSERT INTO College (collegeID, collegeName) VALUES ('10', '外语学院');
INSERT INTO College (collegeID, collegeName) VALUES ('11', '法学院');
INSERT INTO College (collegeID, collegeName) VALUES ('12', '商学院');
INSERT INTO College (collegeID, collegeName) VALUES ('13', '教育系');
INSERT INTO College (collegeID, collegeName) VALUES ('14', '音乐学院');
CREATE UNIQUE INDEX College_PK ON College (collegeID);
DROP TABLE Course;
CREATE TABLE Course (courseID VARCHAR(20) COLLATE utf8_bin NOT NULL, courseName VARCHAR(20) COLLATE utf8_bin, credit INT, period INT, peopleNum INT, state SMALLINT, CONSTRAINT PK_COURSE PRIMARY KEY (courseID));
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0001', '微积分', 5, 18, 90, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0002', '物理学', 4, 18, 80, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0003', '大学英语', 2, 16, 150, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0004', '军事理论', 1, 16, 300, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0005', '概率论', 2, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0006', '马克思主义基本原理', 2, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0007', '线性代数', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0008', '毛概', 2, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0009', '思想道德修养', 2, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0010', '中国近代史纲要', 2, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0011', '体育', 1, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0012', '计算机应用基础', 2, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0013', '程序设计基础', 2, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0014', 'Ｃ语言程序设计', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0015', '数据结构', 2, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0016', 'Java语言程序设计', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0017', 'JavaEE', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0018', '数字电路', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0019', '离散数学', 4, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0020', '计算机组成原理', 5, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0021', '编译原理', 4, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0022', '计算机学科导论', 2, 15, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0023', '软件工程导论', 3, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0024', '算法设计与分析', 3, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0025', '软件开发环境与工具', 3, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0026', '系统分析与设计', 3, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0027', '软件方法与过程', 3, 16, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0028', '汇编语言', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0029', '计算机图形学', 3, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0030', '数据库系统原理', 5, 18, 0, 0);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0031', '桥牌理论与实践', 0, 16, 100, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0032', '艺术陶瓷鉴赏', 0, 16, 180, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0033', '运动休闲与养生', 0, 16, 360, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0034', '西方音乐鉴赏', 0, 16, 100, 1);
INSERT INTO Course (courseID, courseName, credit, period, peopleNum, state) VALUES ('0035', '摄影欣赏与实践', 0, 16, 100, 1);
CREATE UNIQUE INDEX Course_PK ON Course (courseID);
DROP TABLE Major;
CREATE TABLE Major (majorID VARCHAR(20) COLLATE utf8_bin NOT NULL, collegeID VARCHAR(20) COLLATE utf8_bin, majorName VARCHAR(20) COLLATE utf8_bin, CONSTRAINT PK_MAJOR PRIMARY KEY (majorID));
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('001', '01', '软件工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('012', '01', '电子信息工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('013', '01', '通信工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('014', '01', '计算机科学与技术');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('021', '02', '水利水电工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('022', '02', '环境工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('023', '02', '给水排水工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('024', '02', '地理信息系统');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('025', '02', '水文与水资源工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('026', '02', '道路桥梁与渡河工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('031', '03', '物理学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('032', '03', '应用物理学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('033', '03', '测控技术与仪器');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('034', '03', '电子科学与技术');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('035', '03', '电子信息科学与技术');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('041', '04', '工业设计');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('042', '04', '机械工程及自动化');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('043', '04', '机械设计及其自动化');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('051', '05', '自动化');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('052', '05', '电气工程及其自动化');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('053', '05', '生物医学工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('061', '06', '化学工程与工艺');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('062', '06', '制药工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('063', '06', '过程装备与控制工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('064', '06', '热能与动力工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('065', '06', '环境科学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('066', '06', '安全工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('071', '07', '土木工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('072', '07', '交通工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('073', '07', '建筑环境与设备工程');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('081', '08', '汉语言文学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('082', '08', '对外汉语');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('091', '09', '考古学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('092', '09', '历史学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('101', '10', '英语');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('102', '10', '日语');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('103', '10', '俄语');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('104', '10', '德语');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('111', '11', '法学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('121', '12', '工商管理');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('122', '12', '经济学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('123', '12', '国际经济与贸易');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('124', '12', '金融学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('125', '12', '统计学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('126', '12', '会计学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('131', '13', '教育学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('132', '13', '应用心理学');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('133', '13', '思想政治教育');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('141', '14', '音乐表演');
INSERT INTO Major (majorID, collegeID, majorName) VALUES ('142', '14', '音乐学');
CREATE UNIQUE INDEX Major_PK ON Major (majorID);
CREATE INDEX Relationship_5_FK ON Major (collegeID);
DROP TABLE Student;
CREATE TABLE Student (studentID VARCHAR(20) COLLATE utf8_bin NOT NULL, majorID VARCHAR(20) COLLATE utf8_bin, name VARCHAR(100) COLLATE utf8_bin, grade INT, birthday VARCHAR(20) COLLATE utf8_bin, sex VARCHAR(20) COLLATE utf8_bin, password VARCHAR(20) COLLATE utf8_bin, year INT, state SMALLINT, CONSTRAINT PK_STUDENT PRIMARY KEY (studentID));
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110101', '001', '吴晓', 3, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110102', '001', '王馨馨', 3, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110103', '001', '龙宸汉', 3, '19950601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110104', '001', '杨天', 3, '19910602', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110105', '001', '秦洛洛', 3, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110106', '001', '马红宾', 3, '19910317', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110107', '002', '王宁', 1, '19950601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110108', '003', '王楠', 1, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110109', '004', '赵峰', 1, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110110', '001', '张欣', 1, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110111', '001', '张云峰', 2, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110112', '003', '李志浩', 2, '19910301', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110113', '003', '陈浩天', 2, '19950601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110114', '011', '吴佳佳', 2, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110115', '011', '吴刚', 4, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110116', '001', '刘依欣', 4, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110117', '005', '孙浩天', 4, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110118', '006', '刘一博', 4, '19910301', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110119', '007', '翟越峰', 4, '19950601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110120', '008', '李艺', 3, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110121', '009', '陈磊', 3, '19910601', '男', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110122', '009', '王亚楠', 3, '19910601', '女', '000123', 4, 1);
INSERT INTO Student (studentID, majorID, name, grade, birthday, sex, password, year, state) VALUES ('20110123', '009', '王霸天', 3, '19910601', '男', '000123', 4, 1);
CREATE INDEX Relationship_2_FK ON Student (majorID);
CREATE UNIQUE INDEX Student_PK ON Student (studentID);
DROP TABLE StudentCourse;
CREATE TABLE StudentCourse (studentID VARCHAR(20) COLLATE utf8_bin NOT NULL, courseID VARCHAR(20) COLLATE utf8_bin NOT NULL, score INT, semester VARCHAR(10) COLLATE utf8_bin NOT NULL, state INT, PRIMARY KEY (studentID, courseID));
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110101', '0001', 0, '1', 1);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110101', '0002', 0, '1', 1);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110101', '0034', 0, '1', 1);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110101', '0035', 0, '1', 1);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110102', '0001', 89, '1', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110303', '0001', 88, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110304', '0005', 90, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110304', '0006', 84, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110305', '0007', 75, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110306', '0008', 82, '1', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110306', '0009', 79, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110307', '0001', 73, '3', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110308', '0011', 88, '4', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110308', '0012', 90, '5', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110309', '0013', 84, '3', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110310', '0014', 75, '6', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110310', '0015', 82, '7', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110311', '0016', 79, '8', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110312', '0017', 73, '1', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110312', '0018', 76, '1', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110313', '0019', 81, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110314', '0020', 88, '3', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110314', '0021', 90, '3', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110315', '0022', 84, '5', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110316', '0023', 75, '8', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110316', '0024', 82, '7', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110317', '0025', 79, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110318', '0026', 73, '4', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110318', '0027', 76, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110319', '0028', 81, '1', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110320', '0029', 88, '2', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110321', '0030', 90, '3', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110322', '0031', 84, '5', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110322', '0032', 75, '5', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110323', '0033', 82, '5', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110324', '0034', 79, '6', 0);
INSERT INTO StudentCourse (studentID, courseID, score, semester, state) VALUES ('20110324', '0035', 73, '3', 0);
CREATE INDEX StudentCourse_FK ON StudentCourse (studentID);
CREATE INDEX StudentCourse3_FK ON StudentCourse (courseID);
DROP TABLE Teacher;
CREATE TABLE Teacher (teacherID VARCHAR(8) COLLATE utf8_bin NOT NULL, collegeID VARCHAR(20) COLLATE utf8_bin, name VARCHAR(100) COLLATE utf8_bin, sex VARCHAR(20) COLLATE utf8_bin, birthday VARCHAR(20) COLLATE utf8_bin, password VARCHAR(20) COLLATE utf8_bin, state SMALLINT, CONSTRAINT PK_TEACHER PRIMARY KEY (teacherID));
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010101', '01', '李强', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010102', '01', '王云', '女', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010103', '01', '吴振', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010104', '01', '陈好', '女', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010105', '01', '秦镇南', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010106', '01', '王浩峰', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010107', '01', '龙浩', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010108', '01', '王娜娜', '女', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010109', '01', '李超强', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010110', '01', '张璐', '女', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010111', '01', '刘云天', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010112', '01', '李易峰', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010113', '01', '赵毅天', '男', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010114', '01', '刘露', '女', '19760505', '000456', 1);
INSERT INTO Teacher (teacherID, collegeID, name, sex, birthday, password, state) VALUES ('20010115', '01', '王风', '男', '19760505', '000456', 1);
CREATE INDEX Relationship_4_FK ON Teacher (collegeID);
CREATE UNIQUE INDEX Teacher_PK ON Teacher (teacherID);
DROP TABLE TeacherComment;
CREATE TABLE TeacherComment (teacherID VARCHAR(8) COLLATE utf8_bin NOT NULL, studentID VARCHAR(10) COLLATE utf8_bin NOT NULL, courseID VARCHAR(8) COLLATE utf8_bin NOT NULL, time VARCHAR(10) COLLATE utf8_bin NOT NULL, comment VARCHAR(50) COLLATE utf8_bin NOT NULL, score INT);
INSERT INTO TeacherComment (teacherID, studentID, courseID, time, comment, score) VALUES ('20010101', '20110101', '0001', '2014', '士大夫', 100);
INSERT INTO TeacherComment (teacherID, studentID, courseID, time, comment, score) VALUES ('20010102', '20110101', '0002', '2014', ' ', 0);
DROP TABLE TeacherCourse;
CREATE TABLE TeacherCourse (teacherID VARCHAR(8) COLLATE utf8_bin NOT NULL, courseID VARCHAR(8) COLLATE utf8_bin NOT NULL, year VARCHAR(5) COLLATE utf8_bin NOT NULL);
INSERT INTO TeacherCourse (teacherID, courseID, year) VALUES ('20010101', '0001', '20141');
INSERT INTO TeacherCourse (teacherID, courseID, year) VALUES ('20010101', '0002', '20132');
INSERT INTO TeacherCourse (teacherID, courseID, year) VALUES ('20100102', '0003', '20141');
