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