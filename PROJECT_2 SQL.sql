 -- 1 Create new schema as alumni
 CREATE DATABASE alumni;
 
 -- 2 Import all .csv files into MySQL
use alumni;

-- 3 Run SQL command to see the structure of six tables
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;

SELECT*FROM college_a_hs limit 1000;
SELECT*FROM college_a_se limit 1000;
SELECT*FROM college_a_sj limit 1000;
SELECT*FROM college_b_hs limit 1000;
SELECT*FROM college_b_se limit 1000;
SELECT*FROM college_b_sj limit 1000;

-- ----------------------------------------------------------------------------------------------------------------------

-- 4 Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ)
-- with Python. (Submit the solution in jupyter notebook)

-- done 

-- ----------------------------------------------------------------------------------------------------------------------

-- 5 Import all the records of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) 
-- into MS Excel. (submit Excel file for this question)


-- done 

-------------------------------------------------------------------------------------------------------------------------

-- 6 Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values.

SELECT*FROM college_a_hs;

create view College_A_HS_V as
select*from college_a_hs 
where rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
batch is not null and  
degree is not null and 
presentstatus is not null and 
hsdegree is not null and 
entranceexam is not null and 
institute is not null and
location is not null;


select*from College_A_HS_V;


-- -----------------------------------------------------------------------------------------------------------------------
-- 7 Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values

SELECT*FROM college_a_se limit 1000;

create view College_A_SE_V as
select*from college_a_se 
where 
rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
batch is not null and  
degree is not null and 
presentstatus is not null and 
organization is not null and 
location is not null;


select*from College_A_SE_V;


-- ----------------------------------------------------------------------------------------------------------------------

-- 8 Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.

SELECT*FROM college_a_sj;

create view College_A_Sj_V as
select*from college_a_sj 
where 
rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
batch is not null and  
degree is not null and 
presentstatus is not null and 
organization is not null and 
designation is not null and 
location is not null;


select*from College_A_SJ_V;

-- ----------------------------------------------------------------------------------------------------------------------
-- 9 Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.

SELECT*FROM college_b_hs;

create view College_B_HS_V as
select*from college_B_hs 
where 
rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
branch is not null and  
batch is not null and  
degree is not null and 
presentstatus is not null and 
hsdegree is not null and 
entranceexam is not null and 
institute is not null and
location is not null;


select*from College_B_HS_V;

-- ----------------------------------------------------------------------------------------------------------------------

-- 10 Perform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.


SELECT*FROM college_b_se;

create view College_B_SE_V as
select*from college_B_se 
where 
rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
branch is not null and  
batch is not null and  
degree is not null and 
presentstatus is not null and 
organization is not null and 
location is not null;


select*from College_B_SE_V;

-- -------------------------------------------------------------------------------------------------------------------

-- 11 Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V, Remove null values.

select*from college_B_sj;

create view College_B_SJ_V as
select*from college_B_sj 
where 
rollno is  not null and 
lastupdate is not null and
name is  not null and
fathername is not null and 
mothername is not null and 
branch is not null and  
batch is not null and  
degree is not null and 
presentstatus is not null and 
organization is not null and
designation is not null and  
location is not null;

select*from College_B_SJ_V;


-- ---------------------------------------------------------------------------------------------------------------------

-- 12
-- Make procedure to use string function/s for converting record of Name, FatherName,
-- MotherName into lower case for views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V,
-- College_B_SJ_V)
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_HS_V;
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_SE_V;
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_SJ_V;
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_HS_V;
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_SE_V;
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_SJ_V;


 DELIMITER $$
 CREATE PROCEDURE College_A_HS_V()
 begin 
 select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_HS_V;
 end $$
 DELIMITER ;
 
 
DELIMITER $$
 CREATE PROCEDURE College_A_SE_V()
 begin 
 select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_SE_V;
 end $$
 DELIMITER ;
 
 
DELIMITER $$
 CREATE PROCEDURE College_A_SJ_V()
 begin 
 select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_A_SJ_V;
 end $$
 DELIMITER ; 
 
 
 DELIMITER $$
 CREATE PROCEDURE College_B_HS_V()
 begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_HS_V;
 end $$
 DELIMITER ; 
 
 
 DELIMITER $$
 CREATE PROCEDURE College_B_SE_V()
 begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_SE_V;
 end $$
 DELIMITER ; 
 
 
 DELIMITER $$
 CREATE PROCEDURE College_B_SJ_V()
 begin 
select lower(Name) Name, lower(FatherName) FatherName, lower(MotherName) MotherName from College_B_SJ_V;
 end $$
 DELIMITER ; 
 
CALL College_A_HS_V;
CALL College_A_SE_V;
CALL College_A_SJ_V;
CALL College_B_HS_V;
CALL College_B_SE_V;
CALL College_B_SJ_V;

-- ---------------------------------------------------------------------------------------------------------------------

-- 13 Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, 
-- College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 


-- done

-- ---------------------------------------------------------------------------------------------------------------------
-- 14 Write a query to create procedure get_name_collegeA using the cursor to fetch names of all students from college A.


create view College_A as
select name from College_A_HS_V
union
select name from College_A_SJ_V
union
select name from College_A_SE_V;

select *from college_A



DELIMITER $$
 CREATE PROCEDURE get_name_collegeA
 (
 inout namA mediumtext 
 )
 begin 
 declare finished int default 0;
 
 declare namelistA mediumtext default " ";
 declare namedetailA
 cursor for
 select name from College_A;
 declare continue handler
 for not found set finished = 1;
 open namedetailA;
 getnameA:
 loop
 fetch namedetailA into namelistA;
 if finished = 1 then
 leave getnameA;
 end if;
 set namA=concat(namelistA,";", namA);
 end loop getnameA;
 close namedetailA;
 end $$
 DELIMITER ;
 SET @namA=" ";
 call get_name_collegeA(@nama);
 select @nama;


-- -------------------------------------------------------------------------------------------------------------------------

-- 15 Write a query to create procedure get_name_collegeB using the cursor to fetch names of all students from college B

create view College_B as
select name from College_B_HS_V
union
select name from College_B_SJ_V
union
select name from College_B_SE_V;

select *from college_B


DELIMITER $$
 CREATE PROCEDURE get_name_collegeB
 (
 inout namB mediumtext 
 )
 begin 
 declare finished int default 0;
 
 declare namelistB mediumtext default " ";
 declare namedetailB
 cursor for
 select name from College_B;
 declare continue handler
 for not found set finished = 1;
 open namedetailB;
 getnameB:
 loop
 fetch namedetailB into namelistB;
 if finished = 1 then
 leave getnameB;
 end if;
 set namB=concat(namelistB,";", namB);
 end loop getnameB;
 close namedetailB;
 end $$
 DELIMITER ;
 SET @namB=" ";
 call get_name_collegeB(@namB);
 select @namB;


-- ----------------------------------------------------------------------------------------------------------------------

-- 16 Calculate the percentage of career choice of College A and College B Alumni
-- (w.r.t Higher Studies, Self Employed and Service/Job)
-- Note: Approximate percentages are considered for career choices


SELECT 'Higher Studies',
(SELECT COUNT(*) FROM college_a_hs_v) / ((SELECT COUNT(*) FROM college_a_hs_v) + (SELECT COUNT(*) FROM college_a_se_v) + (SELECT COUNT(*) FROM college_a_sj_v))*100 'Collage A Percentage',
(SELECT COUNT(*) FROM college_b_hs_v) / ((SELECT COUNT(*) FROM college_b_hs_v) + (SELECT COUNT(*) FROM college_b_se_v) + (SELECT COUNT(*) FROM college_b_sj_v))*100 'Collage B Percentage'

UNION

SELECT 'Self Employed',
(SELECT COUNT(*) FROM college_a_se_v) / ((SELECT COUNT(*) FROM college_a_hs_v) + (SELECT COUNT(*) FROM college_a_se_v) + (SELECT COUNT(*) FROM college_a_sj_v))*100 ,
(SELECT COUNT(*) FROM college_b_se_v) / ((SELECT COUNT(*) FROM college_b_hs_v) + (SELECT COUNT(*) FROM college_b_se_v) + (SELECT COUNT(*) FROM college_b_sj_v))*100

UNION

SELECT 'Service Job',
(SELECT COUNT(*) FROM college_a_sj_v) / ((SELECT COUNT(*) FROM college_a_hs_v) + (SELECT COUNT(*) FROM college_a_se_v)+(SELECT COUNT(*) FROM college_a_sj_v))*100 ,
(SELECT COUNT(*) FROM college_b_sj_v) / ((SELECT COUNT(*) FROM college_b_hs_v) + (SELECT COUNT(*) FROM college_b_se_v) + (SELECT COUNT(*) FROM college_b_sj_v))*100 ;













