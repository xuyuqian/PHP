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