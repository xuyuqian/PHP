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

