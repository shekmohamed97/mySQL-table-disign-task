create  table mentors(mentor_id int primary key,mentor_name varchar(200));

create table baches(bach_id int primary key,bach_name varchar(50));


create table learners(learner_id int primary key , learner_name varchar(200),Mentor_id int,bach_id int,
foreign key (Mentor_id) references mentors(mentor_id),	
foreign key  (bach_id) references baches(bach_id));

create table course(course_id int primary key ,course_name varchar(200));

create table taske(task_id int primary key ,task_name varchar(200), task_score int , Course_id int,
foreign key (Course_id) references course(course_id));

create table marks(marke_id int primary key ,marks int,learner_id int,
foreign key (learner_id) references learners(learner_id));

