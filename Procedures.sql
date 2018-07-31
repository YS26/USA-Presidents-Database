--These are all my create procedures, in order to get the tables to show, 
-- Firstly in order to run this you run have to run the SQLServerPRS.sql, and then you can execute this query procedure
-- After executing you have to run the select statements that I have at the very end. I also have the drop procedures, in case 
-- it's giving an error. When it gives an error saying this

--( Msg 2714, Level 16, State 3, Procedure usp_chg_first_lady, Line 1	   ) 
--( There is already an object named 'usp_chg_first_lady' in the database. )
--( Msg 2714, Level 16, State 3, Procedure usp_del_president, Line 1	   )
--( There is already an object named 'usp_del_president' in the database.  )
--( Msg 2714, Level 16, State 3, Procedure usp_ins_president, Line 1	   )
--( There is already an object named 'usp_ins_president' in the database.  )

-- Please execute the drop procedures and then re-execute this procedure and run the select statments
-- that I have at the very bottom. For each create procedure I go through what the purpose is and why I did them the way I did.
-- Sometimes the presidents got impeached and I deleted their row, or sometimes first ladies got replaced and I updated them.
-- other times vice presidents died, and I deleted them. I couldn't find cases of pets dying or libraries changing so I didn't
-- create any stored procedures for them.

-- #1 This is my update procedure for first lady Rose Cleveland who originally was president's 
-- Grover Cleveland first lady. I updated her table when the president got married to Frances Cleveland
-- after he got married she became the new first lady. 

go
create procedure usp_chg_first_lady
@firstlady_num varchar(2),
@firstlady_firstname char(40),
@firstlady_lastname char(40),
@firstlady_birthplace char(60),
@firstlady_interstingfact varchar(8000)
AS
UPDATE firstlady
set firstlady_firstname = @firstlady_firstname,
firstlady_lastname = @firstlady_lastname,
firstlady_birthplace = @firstlady_birthplace, 
firstlady_interstingfact = @firstlady_interstingfact
WHERE firstlady_num = @firstlady_num

--#2 This is my delete procedure for impeached president Richal Nixon. He was the 37th president who
-- got impeached. After his impeachment he was replaced by his vice president Gerald Ford. Who I updated 
-- later in another procedure down below. I removed president Richard Nixon in this create procedure by deleting his 
-- entire column using his primary key which you will see down below.
go
create procedure usp_del_president
(
@presi_num char(2)
)
as
begin
set nocount on
delete from president where presi_num = @presi_num
set nocount off
end

--#3 This is my insert procedure, following the delete procedure of president Richard Nixon.
-- I made an insert procedure for his Gerald Ford his vice president who became president.  
go
create procedure usp_ins_president
(
@presi_num char(2),
@presi_birthdate varchar(20),
@presi_birthplace varchar(20),
@presi_firstname char(80),
@presi_lastname char(80),
@presi_yearofnomination char(80),
@presi_lastyearinoffice char(80),
@presi_education char(80),
@presi_politicalparty char(80),
@presi_deathdate char(80),
@firstlady_num varchar(2), 
@vicepresi_num varchar(3), 
@pres_petnum varchar(4) 
)
as
begin
	set nocount on
    insert into president
(
presi_num,
presi_birthdate,
presi_birthplace,
presi_firstname,
presi_lastname,
presi_yearofnomination,
presi_lastyearinoffice,
presi_education,
presi_politicalparty,
presi_deathdate,
firstlady_num,
vicepresi_num,
pres_petnum
) 
values 
(
@presi_num,
@presi_birthdate,
@presi_birthplace,
@presi_firstname,
@presi_lastname,
@presi_yearofnomination,
@presi_lastyearinoffice,
@presi_education,
@presi_politicalparty,
@presi_deathdate,
@firstlady_num,
@vicepresi_num,
@pres_petnum
);
end

--#4 This is my fourth procedure in order to delete vice president who died in office. 
go
create procedure usp_del_vicepresident
(
@vicepresi_num char(3)
)
as
begin
set nocount on
delete from vicepresident where vicepresi_num = @vicepresi_num
set nocount off
end

-- #1 This executes the update procedure for Frances Cleveland wife of president Cleveland
EXEC usp_chg_first_lady '76','Frances','Cleveland','NY','Youngest wife of all presidents'



--#2 This executes the delete procedure for impeached president Richal Nixon, I deleted his row by using this
-- create procedure. 
exec usp_del_president 37

--#3 This executes the insert procedure for vice president of Richard Nixon, Gerald Ford.
-- After president Richard Nixon, vice president came into office there I gave him a new primary key.
-- You will see that after you run the select statements Gerald Ford has two sections where he is president this is because 
-- he ended up running for president again a second time and won, I decided to keep both in order to show that my 
-- insert procedure worked. 
exec usp_ins_president 
@presi_num = '99', 
@presi_birthdate = 'July 14, 1913',
@presi_birthplace = 'NE',
@presi_firstname = 'Gerald',
@presi_lastname = 'Ford',
@presi_yearofnomination = '1974',
@presi_lastyearinoffice = '1977',
@presi_education = 'University of Michigan Law School',
@presi_politicalparty = 'Republican',
@presi_deathdate = '2006',
@firstlady_num = '92',
@vicepresi_num = '138',
@pres_petnum = '1036'

--#4 This executes the delete procedure for vice presidents. George Clinton who served under James Madison died in office.
exec usp_del_vicepresident 103


select * from president

select * from firstlady

select * from vicepresident