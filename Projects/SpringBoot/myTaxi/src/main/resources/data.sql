/**
 * CREATE Script for init of DB
 
*/

INSERT INTO role VALUES (1,'ADMIN');

 insert into  usere (active, email, name, password, user_id) values (1, 'admin@mytaxi.com', 'admin', '$2a$10$o22rSY.zsGBlsolA/Ctd6u49k6r/ojVsOw4SKKkPIEQ7QxhbmXA2.', 1);
insert   into user_role  (user_id, role_id) values (1, 1);


insert into car (id, name,model_year , date_created, deleted, license_plate, manufactured_in,company_name,seat_count,doors_count,convertible,rating,engine_type,car_status)
values (seqC.nextval,'Mustang','2018', now(), false, 'LXH 1699','UAE', 'Ford',4,2,true,'EXCELLANT','GAS','AVAILABLE');

insert into car (id, name,model_year , date_created, deleted, license_plate, manufactured_in,company_name,seat_count,doors_count,convertible,rating,engine_type,car_status)
values (seqC.nextval,'Lamborghini','2018', now(), false, 'DX 5252','UAE', 'Lamborghini',4,2,false,'EXCELLANT','GAS','AVAILABLE');

insert into car (id, name,model_year , date_created, deleted, license_plate, manufactured_in,company_name,seat_count,doors_count,convertible,rating,engine_type,car_status)
values (seqC.nextval,'Corolla','2018', now(), false, 'TYT 2342','UAE', 'Toyota',4,4,false,'EXCELLANT','GAS','AVAILABLE');



-- Create 3 OFFLINE drivers

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'OFFLINE',
'driver01pw', 'driver01');

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'OFFLINE',
'driver02pw', 'driver02');

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'OFFLINE',
'driver03pw', 'driver03');


-- Create 3 ONLINE drivers

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'ONLINE',
'driver04pw', 'driver04');

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'ONLINE',
'driver05pw', 'driver05');

insert into driver (id, date_created, deleted, online_status, password, username) values (seq.nextval, now(), false, 'ONLINE',
'driver06pw', 'driver06');

-- Create 1 OFFLINE driver with coordinate(longitude=9.5&latitude=55.954)

insert into driver (id, coordinate, date_coordinate_updated, date_created, deleted, online_status, password, username)
values
 (seq.nextval,
 'aced0005737200226f72672e737072696e676672616d65776f726b2e646174612e67656f2e506f696e7431b9e90ef11a4006020002440001784400017978704023000000000000404bfa1cac083127', now(), now(), false, 'OFFLINE',
'driver07pw', 'driver07');

-- Create 1 ONLINE driver with coordinate(longitude=9.5&latitude=55.954)

insert into driver (id, coordinate, date_coordinate_updated, date_created, deleted, online_status, password, username)
values
 (seq.nextval,
 'aced0005737200226f72672e737072696e676672616d65776f726b2e646174612e67656f2e506f696e7431b9e90ef11a4006020002440001784400017978704023000000000000404bfa1cac083127', now(), now(), false, 'ONLINE',
'driver08pw', 'driver08');
 
