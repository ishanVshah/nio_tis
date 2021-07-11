CREATE USER 'niotis'@'%' IDENTIFIED BY 'niotis';
CREATE DATABASE niotis;
GRANT ALL PRIVILEGES ON niotis.* TO 'niotis'@'%';

use niotis;

create table tblpartners
(
	partner_id INT AUTO_INCREMENT PRIMARY KEY,
	partner_name varchar(100),
	app_name varchar(100),
	app_id varchar(100),
	sst varchar(100),
	sd varchar(50),
	afservice_id varchar(50),
	transaction_id varchar(100),
	pfd_url varchar(1000),
	pfd_domain varchar(1000),
	pfd_flow varchar(1000),
	city_id varchar(10),
	zone_id varchar(10),
	upf_ip varchar(1000),
	dnai varchar(1000),
	dnn varchar(1000),
	tac integer,
	pridns varchar(100),
	secdns varchar(100),
	snssai varchar(1000),
	created_on timestamp not null,
	lastupdate_on timestamp not null
);

create table tblzonedetails(
	zone_id INT AUTO_INCREMENT primary key,
	zone_name varchar(100),
	zone_ip varchar(100),
	dnai varchar(100),
	dnn varchar(100),
	tac integer,
	pridns varchar(100),
	secdns varchar(100)	
);

insert into tblzonedetails(zone_id,zone_name,zone_ip,dnai,dnn,tac,pridns,secdns) values(1,'A','10.10.10.100','video-default01','videodnn',10,'10.10.10.1','2.2.2.2');
insert into tblzonedetails(zone_id,zone_name,zone_ip,dnai,dnn,tac,pridns,secdns) values(2,'B','20.20.20.200','video-default02','videodnn',11,'20.20.20.1','2.2.2.2');
insert into tblzonedetails(zone_id,zone_name,zone_ip,dnai,dnn,tac,pridns,secdns) values(3,'C','30.10.30.101','video-default03','videodnn',12,'30.10.30.1','2.2.2.2');
insert into tblzonedetails(zone_id,zone_name,zone_ip,dnai,dnn,tac,pridns,secdns) values(4,'D','40.40.40.10','video-default04','videodnn',13,'40.40.40.1','2.2.2.2');
insert into tblzonedetails(zone_id,zone_name,zone_ip,dnai,dnn,tac,pridns,secdns) values(5,'E','172.16.20.100','video-default05','videodnn',14,'172.16.20.1','2.2.2.2');


create table tblpolicies
(
	policy_id INT AUTO_INCREMENT primary key,
	policy_name varchar(100),
	policy_type integer,
	parnter_id integer,
	indi_target varchar(1),
	target_indt varchar(2),
	target_value varchar(100),
	dnai varchar(100),
	route_profile_id varchar(50),
	route_ipv4 varchar(100),
	route_ipv6 varchar(100),
	app_reloable varchar(1),
	reqtestnoti varchar(1),
	testnoficationuri varchar(500),
	websocketuri varchar(100),
	reqwebsocketuri varchar(1),
	events_subscribed varchar(1000),
	time_specific varchar(1),
	start_time time,
	stop_time time,
	zone_specific varchar(1),
	valid_zoneids varchar(1000),
	afservice_id varchar(100),
	aftrans_id varchar(100),
	created_on timestamp not null,
	lastupdate_on timestamp not null
);

alter table tblpolicies add route_port varchar(50);


CREATE TABLE tblroles
(
    roleid INT AUTO_INCREMENT PRIMARY KEY ,
    rolename varchar(50),
    rstatus varchar(50) ,
    created_on timestamp NOT NULL,
    lastmodified_on timestamp NOT NULL
);

create table tblstaffuser(
  staffid INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100),
  password VARCHAR(500),
  firstname varchar(100),
  lastname varchar(100),
  email varchar(100) ,
  phone varchar(20) ,
  failcount integer,
  sstatus varchar(100),
  last_login_time timestamp,
  created_on timestamp NOT NULL,
  lastmodified_on timestamp NOT NULL
);

create table tblstaffrolerel(
	staffrolerelid INT AUTO_INCREMENT PRIMARY KEY,
	staffid INT,
	roleid INT
);


create table tblaclclass(
    classid INT AUTO_INCREMENT primary key,
    classname varchar(100) not null unique,
    dispname varchar(100) not null,
    disporder int
);

create table tblaclentry(
    aclid INT AUTO_INCREMENT primary key,
	classid bigint,
	roleid  bigint,
	permit int
);


insert into tblstaffuser(username,password,firstname,lastname,email,phone,failcount,sstatus,last_login_time,created_on,lastmodified_on) values('admin','$2a$10$vZnz0KJY7052BllpxqHNPuEyfszEk6ZkZdgntxTgm8FvvMaxHX4oO','admin','admin','admin@admin.com','9999999999',0,'ACTIVE',current_timestamp,current_timestamp,current_timestamp);
insert into tblroles(rolename,rstatus,created_on,lastmodified_on) values ('Admin','ACTIVE',current_timestamp,current_timestamp);
insert into tblroles(rolename,rstatus,created_on,lastmodified_on) values ('Operator','ACTIVE',current_timestamp,current_timestamp);
insert into tblstaffrolerel(staffid,roleid) values(1,1);

INSERT INTO tblaclclass  VALUES  (1,'com.nebstart.manager.model.Role','Role',1);
INSERT INTO tblaclclass  VALUES  (2,'com.nebstart.manager.model.StaffUser','User',2);

INSERT INTO tblaclentry(classid,roleid,permit) values(1,1,4);
INSERT INTO tblaclentry(classid,roleid,permit) values(2,1,4);
