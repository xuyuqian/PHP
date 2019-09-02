# 创建表
create table my_float(
    f1 float,
    f2 float(10,2)
);

# 插入数据
insert into my_float values (123.123,123456789.90);
insert into my_float values (123.1234567,123456789.00);
insert into my_float values (123.1234567,99999999.99);  # 用户不能插入数据直接超过指定的整数部分长度，但是如果是系统自动进位导致的，系统可以承担
insert into my_float values (123.123,10e5);   # 浮点数可以采用科学计数法来存储数据