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

# 创建数据表
use mydatabase2;
create table class
(
    name varchar(10)
);

# 创建数据表
create table mydatabase2.class2
(
    name varchar(10)
);

# 使用表选项
create table mydatabase2.student
(
    name varchar(10)
) charset utf8;

# 在test数据库下创建一个与student一样的表
use test;
create table student like mydatabase2.student;
show tables;

# 查看所有表
show tables;

# 查看匹配数据表
use mydatabase2;
show tables like 'c%';

# 显示表结构
use mydatabase2;
describe class;

desc student;

show columns from student;

# 修改表选项
alter table mydatabase2.student charset gbk;

show create table mydatabase2.student;

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

# 删除表名
drop table class;
show tables;
drop table class2,my_student;

# 插入数据到数据表
create table my_teacher
(
    name varchar(10),
    age  int
);

insert into my_teacher (name, age) values ('Jaca', 30);
insert into my_teacher (age, name) values (40, 'Tom');
insert into my_teacher (name) values ('Li');

insert into my_teacher values ('Zhang',22);

# 获取所有数据
select * from my_teacher;

# 获取指定字段数据
select name from my_teacher;

# 获取年龄为30岁的人的名字
select name from my_teacher where age=30;

# 查看系统保存的三种关系处理字符集
show variables like 'character_set%';

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


# 创建表
create table my_decimal(
                           f1 float(10,2),
                           f2 decimal(10,2)
);

# 插入数据
insert into my_decimal values (12345678.90,12345678.90);
insert into my_decimal values (99999999.99,99999999.99);
insert into my_decimal values (99999999.99,99999999.999);  # 定点数如果整数部分进位超出长度也会报错


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


# 创建表
create table my_set(
    hobby set('篮球','足球','羽毛球','乒乓球','网球','橄榄球','冰球','跳高')
);

# 插入数据
insert into my_set values ('篮球,乒乓球,足球');
insert into my_set values ('橄榄球,跳高,篮球,乒乓球,足球');   # 排序顺序为创建表时的顺序

# 查看数据:以数值方式查看
select hobby + 0 from my_set;

insert into my_set values (255);

# 创建表(证明varchar在MySQL中能够达到的理论值   utf8和gbk)
create table my_varchar(
    name varchar(65535)
)charset utf8;

# 计算在utf8和gbk下对应的varchar能够存储的长度
# utf8 65535/3=21845 如果采用varchar存储，需要两个额外的字节来保存长度
# gbk 65535/2=32767 | 1 如果采用varchar存储，需要额外的2个字节

create table my_utf(
    name varchar(21844)
)charset utf8;

create table my_gbk(
    name varchar(32766)
)charset gbk;


# 创建表，增加字段描述
create table my_comment(
                           name varchar(10) not null comment '当前是用户名，不能为空。',
                           pass varchar(50) not null comment '密码不能为空'
);

# 查看效果(查看表创建语句)
show create table my_comment;


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

# 创建表
create table my_score(
                         student_no char(10),
                         course_no char(10),
                         score tinyint not null,
                         primary key (student_no,course_no)
);

# 主键约束
insert into my_score values ('000000001','course001','100');
insert into my_score values ('000000002','course001','90');
insert into my_score values ('000000001','course002','95');
insert into my_score values ('000000002','course001','95');

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


