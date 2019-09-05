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