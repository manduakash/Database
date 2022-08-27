use assignment_4;


create table customer(
cust_id varchar(3) primary key,	#2
Fname varchar(20) not null,		
Lname varchar(20),
Area varchar(2) not null,
Phone numeric(10)
);


create table movie(
Mv_no int primary key,  #3
cust_id varchar(3),
Title varchar(25) not null,
Star varchar(3) not null,
Price integer,
foreign key movie(cust_id) references customer(cust_id) 	#4
);

#inseting values into customer table
insert into customer values
('A01','Ivan','Ross','SA',6125467),
('A02','Vandana','Ray','MU',5560379),
('A03','Pramada','Jauguste','DA',4560389),
('A04','Basu','Navindi','BA',6125401),
('A05','Ravi','Shridhar','NA',null),
('A06','Rukmini','Aiyer','GH',5125274);

#inserting values into movie table
insert into movie values
(1, 'A02', 'Bloody', 'JC', 181),
(2, 'A04', 'The Firm', 'TC', 200),
(3, 'A01', 'Pretty Woman', 'RG', 151),
(4, 'A06', 'Home Alone', 'MC', 150),
(5, 'A05', 'The Fugitive', 'MF', 200),
(6, 'A03', 'Come', 'MD', 100),
(7, 'A02', 'Dracula', 'GO', 150),
(8, 'A06', 'Quick change', 'BM', 100),
(9, 'A03', 'Gone with the wind', 'CB', 200),
(10, 'A05', 'Carry on Doctor', 'LP', 100);

#5
select title from movie where price between 100 and 200;

#6 
select cust_id from movie where star in('JC','TC','MC');

#7
select * from customer where area like '%A%';

#8
select title from movie where price<180 and title like '______';

#9
select title, price, price+((price/100)*10) as '10% increament' from movie;

#10
select fname, lname,area,phone from customer;

#11
alter table customer modify lname varchar(20) not null;

#12
select fname from customer where phone is null;

#13
update customer set phone=6565857 where phone is null;

#14
select distinct cust_id from customer movie;

#15
alter table movie modify star varchar(3);

#16 
delete from customer where fname='Base';


#17
delete from movie where title='Come';

#18 can not be deleted 
drop table customer;

#19 deleted 
drop table movie;

#20 not done...
-- alter table movie drop 
