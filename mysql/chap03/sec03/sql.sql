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

