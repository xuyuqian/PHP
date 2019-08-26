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