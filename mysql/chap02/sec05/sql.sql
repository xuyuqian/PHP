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