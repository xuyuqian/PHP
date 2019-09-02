# 创建表
create table my_decimal(
    f1 float(10,2),
    f2 decimal(10,2)
);

# 插入数据
insert into my_decimal values (12345678.90,12345678.90);
insert into my_decimal values (99999999.99,99999999.99);
insert into my_decimal values (99999999.99,99999999.999);  # 定点数如果整数部分进位超出长度也会报错