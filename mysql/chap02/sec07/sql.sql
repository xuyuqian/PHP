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