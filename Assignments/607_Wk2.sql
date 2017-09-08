create table Movies(
movieid int auto_increment primary key,
title varchar(30),
release_date date
);

insert into Movies (title, release_date)
values
('Braveheart', '1995-05-24'),
('Forest Gump', '1994-07-06'),
('Awakenings', '1991-01-11'),
('Matrix', '1999-03-31'),
('Memento', '2001-05-25'),
('Interstellar', '2014-11-07');

select * from movies;

##########################

create table Critics(
movieid int references Movies,
ratingid int references Ratings,
name varchar(30)
);

insert into Critics (movieid, ratingid, name)
values
(1,5,'Emrah'),(1,5,'Connie'),(1,3,'Clara'),(1,3,'Alp'),(1,5,'Deniz'),(1,5,'Emre'),
(2,5,'Emrah'),(2,4,'Connie'),(2,4,'Clara'),(2,5,'Alp'),(2,5,'Deniz'),(2,5,'Emre'),
(3,4,'Emrah'),(3,5,'Connie'),(3,3,'Clara'),(3,2,'Alp'),(3,5,'Deniz'),(3,4,'Emre'),
(4,5,'Emrah'),(4,3,'Connie'),(4,4,'Clara'),(4,2,'Alp'),(4,2,'Deniz'),(4,5,'Emre'),
(5,5,'Emrah'),(5,4,'Connie'),(5,4,'Clara'),(5,2,'Alp'),(5,3,'Deniz'),(5,4,'Emre'),
(6,2,'Emrah'),(6,3,'Connie'),(6,3,'Clara'),(6,1,'Alp'),(6,2,'Deniz'),(6,5,'Emre');

select * from critics;

##########################

create table Ratings(
ratingid int auto_increment primary key,
rating varchar(30)
);

insert into Ratings (rating)
values ('Awful'), ('Bad'), ('Average'), ('Good'), ('Excellent');

select * from ratings;

############################


select title, release_date, name, rating from movies m
join critics c on m.movieid = c.movieid
join ratings r on r.ratingid = c.ratingid;


