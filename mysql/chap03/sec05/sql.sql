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
