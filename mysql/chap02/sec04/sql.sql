# 创建表
create table my_date(
    d1 date,
    d2 time,
    d3 datetime,
    d4 timestamp,
    d5 year
);

# 插入数据
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',69);
# year的特殊性：可以采用两位数的数据插入，也可以四位数的年份插入
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',2020);
# year进行两位数插入的时候，有一个区间划分，零界点为69和70，当输入69以下，那么系统时间为20+数字，如果是70以上。那么系统时间为19+数字
insert into my_date values ('1900-01-01','12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);
# timestamp
update my_date set d1='2000-01-01' where d5=2069;
# time类型的特殊性，本质是用来表示时间区间，能表示的范围比较大
insert into my_date values ('1900-01-01','512:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);
# 在进行时间类型录入的时候（time）还可以使用一个简单的日期代替时间，在时间格式之前加一个空格，然后指定一个数字（可以是负数），系统会自动将该数字转换成天数*24小时，再加上后面的时间
insert into my_date values ('1900-01-01','5 12:12:12','1900-01-01 12:12:12','1999-01-01 12:12:12',70);
