# 创建表，增加字段描述
create table my_comment(
    name varchar(10) not null comment '当前是用户名，不能为空。',
    pass varchar(50) not null comment '密码不能为空'
);

# 查看效果(查看表创建语句)
show create table my_comment;
