create table ingest (
	userid varchar(100),
    foodcode int,
    create_time TEXT,
    ingest_no int primary key auto_increment
);
create table user (
	id varchar(100) primary key,
    pass varchar(100),
    name varchar(100),
    address varchar(100),
    tel varchar(100),
    allergy varchar(200)
);

create table choose (
	userid varchar(100),
    foodcode int,
    primary key(userid, foodcode)
);

