# 交叉连接
select * from my_student cross join my_int;

# 内连接
create table my_class(
     id int primary key auto_increment,
     name varchar(10) not null unique
);

# 插入数据
insert into my_class values(null,'1班'),(null,'2班'),(null,'3班');

# 内连接
select * from my_student inner join my_class;
select * from my_student inner join my_class on class_id=id;
select * from my_student inner join my_class on my_student.class_id=my_class.id;
select * from my_student as s inner join my_class as c on s.class_id=c.id;

select * from my_class as c inner join my_student as s on s.class_id=c.id;
select * from my_class as c inner join my_student as s where s.class_id=c.id;