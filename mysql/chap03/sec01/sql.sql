# 创建表
create table my_default(
    name varchar(10) NOT NULL,   -- 不能为空
    age int default 18    -- 表示，如果当前字段在进行数据插入的时候没有提供，那么就使用18
);

# 测试插入数据
insert into my_default(name) values('Tom');

# default关键字的另外一层使用：显示的告知字段使用默认值，在进行数据插入的时候，对字段值直接使用default
insert into my_default values ('Jack',default);