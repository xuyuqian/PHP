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