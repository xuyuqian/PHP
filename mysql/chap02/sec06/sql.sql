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