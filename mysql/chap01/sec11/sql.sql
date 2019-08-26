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