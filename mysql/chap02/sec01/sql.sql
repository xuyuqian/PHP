# 创建数据表
create table my_int
(
    int_1 tinyint,
    int_2 smallint,
    int_3 mediumint,
    int_4 int,
    int_5 bigint
);

# 插入数据
insert into my_int values (10,10000,100000,1000000,1000000000);

# 插入错误数据（超出对应的数据范围）
insert into my_int values (255,255,255,255,255);
# 上面的错误原因
insert into my_int values (-128,255,255,255,255);
insert into my_int values (127,255,255,255,255);


# 无符号表示设定
alter table my_int add int_6 tinyint unsigned first;
insert into my_int values (255,100,255,255,255,255);
insert into my_int values (-100,100,255,255,255,255);

# 显示长度
alter table my_int add int_7 tinyint zerofill first;
insert into my_int values (1,1,1,1,1,1,1);

alter table my_int add int_8 tinyint(2) zerofill first;
insert into my_int values (100,1,1,1,1,1,1,1);
insert into my_int values (1,1,1,1,1,1,1,1);

