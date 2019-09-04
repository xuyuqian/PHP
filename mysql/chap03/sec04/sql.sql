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