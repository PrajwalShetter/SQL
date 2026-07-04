create database youtube_db;

use youtube_db;

create table user_info(id int, user_name varchar(25), gender enum("male", "female","others"), phone_number bigint,interest 
set("comedy","Movies","Music"), unique_id char(20), isActive boolean);

insert into user_info values("0001", "Ravi", "male",99023456781, "comedy,Music", "Ravi90", false);

show databases;

select * from users_info;

alter table users_info add DOB date; # adding new column into the table
rename table user_info to users_info; #renameing table
alter table users_info drop DOB; # deleteing 1 col from the table
alter table users_info modify column phone_number int; # change the dataType of the column
alter table users_info rename column phone_number to mobile_number; # renaming the column name 

#drop table users_name; # deleting the column name

desc users_info;

alter table users_info add email varchar(25), add address varchar(40);
alter table users_info drop DOB, drop email;
alter table users_info rename column unique_id to unique_thought, rename column user_name to name ;

alter table users_info add email varchar(30), drop address, rename column mobile_number to phone_number;

#4 ways
insert into users_info(email) values("ravi@gmal.com"); # inserting selected columns
insert into users_info values(0002, "suraj", "male", 789012345,"movies","be simple",true,"suraj@gmail.com"); #inserting all columns
insert into users_info values(0003, "Gouri", "female", 678902345,"comedy","be cool",true,"gouri@gmail.com"),(0004, "lakshmi", "female", 7890128906,"Music,comedy","be tough",true,"lakshmi@gmail.com"); # inserting multiple columns at a time
insert into users_info(name, gender) values("koushi","female"),("sushant","male"); #inserting multiple rows only selected columns

#update 
update users_info set email="ravi@gmail.com" where id="1";

# delete



create database instagram_db;
use instagram_db;

create table user_info(user_id int primary key, user_name varchar(25) unique not null, phone_number bigint check(length(phone_number)=10),DOB date, nationality varchar(20) default "India"  );
desc user_info;

insert into user_info(user_id, user_name,phone_number,DOB) values("0001", "Praveen",9902145681, "2005-10-10");

 insert into user_info(user_id, user_name,phone_number,DOB) values("0002", "Govind",9389145681, "2005-11-18");
 
 create table post_info(post_id int primary key, no_of_likes int, caption varchar(30) not null, user_id int, foreign key(user_id) references user_info(user_id));
 
 insert into post_info values(1,0,"Travelling",0001);
 insert into post_info values(2,0,"sleeping",0001);
 insert into post_info values(3,0,"sleeping",0002);
 
 delete from post_info where user_id="0001";
 delete from user_info where user_id="0001"; #we canot perform this because child table have relation 
 
 commit; #save
 
 select * from post_info;
 select * from user_info;
 
 #set autocommit, commit, rollback
 set autocommit =0;
 delete from post_info; # deleting all data from the table
 rollback;
 
 truncate table post_info; # this will delete the whole data from the respective table and will not retain
 
 select phone_number, user_name from user_info;
 #alias
 select no_of_likes as likes , caption as  title from post_info;
 
 #distinct
 select distinct caption from post_info;
 
 #logical operators
 #and,or,not
 #between,is, like, not like
 
 #aggregate functions
 #count, sum, avg, min, max etc
 
 #group by- having, order by
 
 #3rd day
 desc user_info;
 desc post_info;
 
create table comment_info(comment_id int primary key, comment_code varchar(25), user_id int, post_id, comment_status Enum("Hidden", "Visible"), foreign key)





