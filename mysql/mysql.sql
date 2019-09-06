# 创建数据库
create database mydatabase;

# 创建数据库带有库选项
create database mydatabase2 charset gbk;

# 显示所有数据库
show databases;

# 显示部分数据库
show databases like 'my%';

# 查看数据库创建语句
show create database mydatabase;

# 选择数据库
use mydatabase;

# 修改数据库字符集
alter database mydatabase charset gbk;

# 创建数据表
use mydatabase2;
create table class
(
    name varchar(10)
);

# 创建数据表
create table mydatabase2.class2
(
    name varchar(10)
);

# 使用表选项
create table mydatabase2.student
(
    name varchar(10)
) charset utf8;

# 在test数据库下创建一个与student一样的表
use test;
create table student like mydatabase2.student;
show tables;

# 查看所有表
show tables;

# 查看匹配数据表
use mydatabase2;
show tables like 'c%';

# 显示表结构
use mydatabase2;
describe class;

desc student;

show columns from student;

# 修改表选项
alter table mydatabase2.student charset gbk;

show create table mydatabase2.student;

# 数据库中数据表名字通常有前缀：取数据库的前两个字母加上下划线
rename table mydatabase2.student to my_student;
show tables;

# 给学生表增加age字段
alter table my_student add column age int;
desc my_student;
# 增加字段：放在第一个字段
alter table my_student add id int first;

# 修改字段名
alter table my_student change age nj int;

# 修改字段类型
alter table my_student modify name varchar(20);

# 删除字段
alter table my_student drop nj;

# 删除表名
drop table class;
show tables;
drop table class2,my_student;

# 插入数据到数据表
create table my_teacher
(
    name varchar(10),
    age  int
);

insert into my_teacher (name, age) values ('Jaca', 30);
insert into my_teacher (age, name) values (40, 'Tom');
insert into my_teacher (name) values ('Li');

insert into my_teacher values ('Zhang',22);

# 获取所有数据
select * from my_teacher;

# 获取指定字段数据
select name from my_teacher;

# 获取年龄为30岁的人的名字
select name from my_teacher where age=30;

# 查看系统保存的三种关系处理字符集
show variables like 'character_set%';

# 创建数据表
create table my_int
(
    int_1 tinyint,
    int_2 smallint,
    int_3 mediumint,
    int_4 int,
    int_5 bigint
);

# 插入数据
insert into my_int values (10,10000,100000,1000000,1000000000);

# 插入错误数据（超出对应的数据范围）
insert into my_int values (255,255,255,255,255);
# 上面的错误原因
insert into my_int values (-128,255,255,255,255);
insert into my_int values (127,255,255,255,255);


# 无符号表示设定
alter table my_int add int_6 tinyint unsigned first;
insert into my_int values (255,100,255,255,255,255);
insert into my_int values (-100,100,255,255,255,255);

# 显示长度
alter table my_int add int_7 tinyint zerofill first;
insert into my_int values (1,1,1,1,1,1,1);

alter table my_int add int_8 tinyint(2) zerofill first;
insert into my_int values (100,1,1,1,1,1,1,1);
insert into my_int values (1,1,1,1,1,1,1,1);

# 创建表
create table my_float(
                         f1 float,
                         f2 float(10,2)
);

# 插入数据
insert into my_float values (123.123,123456789.90);
insert into my_float values (123.1234567,123456789.00);
insert into my_float values (123.1234567,99999999.99);  # 用户不能插入数据直接超过指定的整数部分长度，但是如果是系统自动进位导致的，系统可以承担
insert into my_float values (123.123,10e5);   # 浮点数可以采用科学计数法来存储数据


# 创建表
create table my_decimal(
                           f1 float(10,2),
                           f2 decimal(10,2)
);

# 插入数据
insert into my_decimal values (12345678.90,12345678.90);
insert into my_decimal values (99999999.99,99999999.99);
insert into my_decimal values (99999999.99,99999999.999);  # 定点数如果整数部分进位超出长度也会报错


# 创建表
create table my_date(
                        d1 date,
                        d2 time,
                        d3 datetime,
                        d4 timestamp,
                        d5 year
);

# 插入数据
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',69);
# year的特殊性：可以采用两位数的数据插入，也可以四位数的年份插入
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',2020);
# year进行两位数插入的时候，有一个区间划分，零界点为69和70，当输入69以下，那么系统时间为20+数字，如果是70以上。那么系统时间为19+数字
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);
# timestamp
update my_date set d1='2000-01-01' where d5=2069;
# time类型的特殊性，本质是用来表示时间区间，能表示的范围比较大
insert into my_date values ('1900-01-01','512:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);
# 在进行时间类型录入的时候（time）还可以使用一个简单的日期代替时间，在时间格式之前加一个空格，然后指定一个数字（可以是负数），系统会自动将该数字转换成天数*24小时，再加上后面的时间
insert into my_date values ('1900-01-01','5 12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);

# 创建表
create table my_enum(
    gender enum('男','女','保密')
);

desc my_enum;

# 插入数据
insert into my_enum values ('男');
insert into my_enum values ('女');
insert into my_enum values ('男');

# enum字段存储的结果是数值
# 将字段按照数值输出
select gender + 0 from my_enum;

insert into my_enum values (3);


# 创建表
create table my_set(
    hobby set('篮球','足球','羽毛球','乒乓球','网球','橄榄球','冰球','跳高')
);

# 插入数据
insert into my_set values ('篮球,乒乓球,足球');
insert into my_set values ('橄榄球,跳高,篮球,乒乓球,足球');   # 排序顺序为创建表时的顺序

# 查看数据:以数值方式查看
select hobby + 0 from my_set;

insert into my_set values (255);

# 创建表(证明varchar在MySQL中能够达到的理论值   utf8和gbk)
create table my_varchar(
    name varchar(65535)
)charset utf8;

# 计算在utf8和gbk下对应的varchar能够存储的长度
# utf8 65535/3=21845 如果采用varchar存储，需要两个额外的字节来保存长度
# gbk 65535/2=32767 | 1 如果采用varchar存储，需要额外的2个字节

create table my_utf(
    name varchar(21844)
)charset utf8;

create table my_gbk(
    name varchar(32766)
)charset gbk;


# 创建表，增加字段描述
create table my_comment(
                           name varchar(10) not null comment '当前是用户名，不能为空。',
                           pass varchar(50) not null comment '密码不能为空'
);

# 查看效果(查看表创建语句)
show create table my_comment;


# 随表主键
# 方案1
# 创建表，在字段后增加主键属性
create table my_pri1(
    username varchar(10) primary key
);

# 方案2
create table my_pri2(
                        username varchar(10),
                        primary key(username)
);

# 表后增加
create table my_pri3(
    username varchar(10)
);

# 增加主键
alter table my_pri3 add primary key(username);

# 删除主键
alter table my_pri3 drop primary key;

# 创建表
create table my_score(
                         student_no char(10),
                         course_no char(10),
                         score tinyint not null,
                         primary key (student_no,course_no)
);

# 主键约束
insert into my_score values ('000000001','course001','100');
insert into my_score values ('000000002','course001','90');
insert into my_score values ('000000001','course002','95');
insert into my_score values ('000000002','course001','95');

# 创建一个带自动增长的表
create table my_auto(
                        id int primary key auto_increment,
                        name varchar(10) not null comment '用户名',
                        pass varchar(50) not null comment '密码'
);

# 插入数据，触发自动增长，不能给定具体值
insert into my_auto values (null,'Tom','123456');

# 修改auto_increment
alter table my_auto auto_increment=10;

# 删除自增长
alter table my_auto modify id int;
# 切记不要再次增加primary key

# 查看自增长初始变量
show variables like 'auto_increment%';

# 增加自增长
alter table my_auto modify id int auto_increment;

insert into my_auto values (3,'Jack','123456');  # 用户指定数据之后，自增长不参与
insert into my_auto values (20,'Jack','123456');  # 用户指定数据之后，自增长不参与

# 修改自增长小于当前已有的值
alter table my_auto auto_increment=10;   # 结果无法修改


# 创建表，唯一键
create table my_unique1(
                           id int primary key auto_increment,
                           usernmae varchar(10) unique
);

create table my_unique2(
                           id int primary key auto_increment,
                           usernmae varchar(10),
                           unique key (usernmae)
);

create table my_unique3(
                           id int primary key auto_increment,
                           usernmae varchar(10)
);
alter table my_unique3 add unique key (usernmae);


# 查看唯一键
desc my_unique1;

# 唯一键效果
insert into my_unique1 values (null,default);
insert into my_unique1 values (null,default);
insert into my_unique1 values (null,default);

insert into my_unique1 values (null,'army');
insert into my_unique1 values (null,'army');  # 非空不允许重复

# 删除唯一键
alter table my_unique2 drop index usernmae;

# 创建表(多数据插入)
create table my_insert(
    name varchar(10)
);

# 多数据插入
insert into my_insert values ('张三'),('李四'),('王五');

# 创建表（主键冲突）
create table my_student(
                           stu_id varchar(10) primary key comment '主键，学生ID',
                           stu_name varchar(10) not null comment '学生姓名'
);
# 插入数据
insert into my_student
values ('stu0001', '张三'),
       ('stu0002', '张四'),
       ('stu0003', '张五'),
       ('stu0004', '张六');

insert into my_student values ('stu0004','小明');   # 结果无法插入

# 冲突更新
insert into my_student values ('stu0004','小明') on duplicate key update stu_name ='小明';

replace into my_student values ('stu0001','小张');

# 创建表（蠕虫复制）
create table my_simple(
    name char(1) not null
);

# 插入数据
insert into my_simple values ('a'),('b'),('c'),('d');

# 蠕虫复制
insert into my_simple (name) select name from my_simple;

# 更新数据
update my_simple set name='e' where name='a' limit 2;

select * from my_auto;
# 删除整个表的数据
delete from my_auto;

# 插入数据
insert into my_auto values (null,'ceshi','123456');  # auto_increment是无法进行重置的

# 重置表选项中的自增长
truncate my_auto;
# 插入数据
insert into my_auto values (null,'ceshi','123456');  # auto_increment是无法进行重置的


# select选项
select all * from my_simple;  -- select *

select distinct * from my_simple;

# 字段别名
select distinct name as name1,name name2 from my_simple;

# 多张表
select * from my_int,my_set;

# 动态数据
select * from (select int_1,int_8 from my_int) as int_my;

# 分组统计
alter table my_student add class_id int;
# 插入数据处理
# 进行分组
select * from my_student group by class_id;  -- 根据班级id进行分组

# 使用聚合函数
alter table my_student add stu_age tinyint unsigned;
alter table my_student add stu_height tinyint unsigned;

# 按照班级统计每班人数，最大年龄，最矮身高，平均年龄
select class_id,count(*),max(stu_age),min(stu_height),avg(stu_age) from my_student group by class_id;
select class_id,group_concat(stu_name),count(*),max(stu_age),min(stu_height),avg(stu_age) from my_student group by class_id;

# 多分组
alter table my_student add gender enum('男','女','保密');
# 插入数据自行处理
# 进行多分组
select class_id,gender,count(*),group_concat(stu_name) from my_student group by class_id, gender;

# 分组排序（班级升序，性别降序）
select class_id,gender,count(*),group_concat(stu_name) from my_student group by class_id, gender desc ;

# 回溯统计
select class_id,count(*) from my_student group by class_id;
select class_id,gender,count(*) from my_student group by class_id,gender with rollup;

# having子句
# 插入数据自行处理
# 查询班级人数大于等于4个以上的班级
select class_id,count(*) as number from my_student group by class_id having number >= 4;

# order by 子句
# 班级学生按照身高排序
select * from my_student order by stu_height asc ;

# 按照班级、身高排序
select * from my_student order by class_id desc ,stu_height;

# limit 子句
select * from my_student limit 2;

# 分页
select * from my_student limit 0,2;
select * from my_student limit 2,2;


# 创建表
create table ysf1(
                     int_1 int,
                     int_2 int,
                     int_3 int,
                     int_4 int
);

insert into ysf1 values (100,-100,0,default);

# 算术运算
select int_1+int_2,int_1-int_2,int_1*int_2,int_1/int_2,int_2/int_3,int_2%2,int_4%5 from ysf1;

# 比较运算符
select * from my_student where stu_age>=20;
# MySQL中没有规定select必须有数据表
select '1' <=> 1,0.02 <=> 0,0.02 <> 0;

# 查找年龄区间
select * from my_student where stu_age between 20 and 30;

# 逻辑运算符
# 与
select * from my_student where stu_age >= 20 and stu_age <= 30;

# 或
# 查找身高高于170的或者年龄大于20岁的学生
select * from my_student where stu_height >= 170 or stu_age >= 20;

# in运算符
# 知道学生信息
select * from my_student where stu_id in ('stu0001','stu0004','stu0007');

# is运算符
# 查询不为空数据
select * from my_int where int_6 is null;

# like运算符
# 获取所有姓小的同学
select * from my_student where stu_name like '小%';
select * from my_student where stu_name like '小_';

# 获取男生身高升序，女生身高降序
(select * from my_student where gender='男' order by stu_height asc limit 10)
union
(select * from my_student where gender='女' order by stu_height desc limit 10) ;

select * from my_student
union
select * from my_student;

select * from my_student
union all
select * from my_student;

select stu_id,stu_name,stu_height from my_student
union all
select stu_height,stu_name,stu_id from my_student;
