select * from my_auto;
# 删除整个表的数据
delete from my_auto;

# 插入数据
insert into my_auto values (null,'ceshi','123456');  # auto_increment是无法进行重置的

# 重置表选项中的自增长
truncate my_auto;
# 插入数据
insert into my_auto values (null,'ceshi','123456');  # auto_increment是无法进行重置的