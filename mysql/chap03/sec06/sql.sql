# 创建表，唯一键
create table my_unique1(
    id int primary key auto_increment,
    usernmae varchar(10) unique
);

create table my_unique2(
    id int primary key auto_increment,
    usernmae varchar(10),
    unique key (usernmae)
);

create table my_unique3(
   id int primary key auto_increment,
   usernmae varchar(10)
);
alter table my_unique3 add unique key (usernmae);

# 查看唯一键
desc my_unique1;

# 唯一键效果
insert into my_unique1 values (null,default);
insert into my_unique1 values (null,default);
insert into my_unique1 values (null,default);

insert into my_unique1 values (null,'army');
insert into my_unique1 values (null,'army');  # 非空不允许重复

# 删除唯一键
alter table my_unique2 drop index usernmae;