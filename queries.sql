create database hotel_mgmt;
use database hotel_mgmt;

create table admins (
    id int primary key,
    name varchar(30) not null,
    email varchar(30),
    username varchar(30) not null,
    password varchar(256) not null 
);

create table amenities(
    a_id int primary key,
    a_type int, 
    a_status int,  
    a_capacity int, 
    a_title varchar(30), 
    a_description text(500)
);

create table rooms(
    r_id varchar(30) primary key,
    r_number int, 
    r_type int, 
    r_capacity int,
    r_status int
);

create table guests(
    g_id int primary key,
    g_name varchar(30), 
    g_email varchar(50), 
    g_count varchar(30),
    g_streetno varchar(100),
    g_city varchar(100), 
    g_state varchar(100),
    g_country varchar(100), 
    g_pincode varchar(30)
);

create table charges(
    code int,
    type int, 
    cost int,
    primary key(code, type)
);

create table bookings(
    b_id int primary key,
    r_id varchar(30),
    g_id int,
    b_status int not null,
    a_id int,
    st date,
    et date,
    f_cost int,
    f_type int, 
    foreign key(r_id) references rooms(r_id),
    foreign key(g_id) references guests(g_id),
    foreign key(a_id) references amenities(a_id)
);


