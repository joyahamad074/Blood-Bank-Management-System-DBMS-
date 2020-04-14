

--Here we drop these tables.because if these tables are exist in database then it shows us error,so for that first we have to droped the tables--

drop table Donate;
drop table BloodBank;
drop table Donar;
drop table Patient;


--After drop.Then we create all the tables again--

create table Patient(
    patient_id integer,
    patient_name varchar(20) not null,
    blood_group varchar(4),
    disease varchar(20),
    patient_address varchar(20),
    patient_contact_no varchar(20),
    primary  key (patient_id)
);

create table Donar(
    donar_id integer,
    donar_name varchar(20) not null,
    blood_group varchar(4),
    donar_contact_no varchar(20),
    donar_address varchar(20),
    disease varchar(20),
    primary key (donar_id)
);

create table BloodBank(
    blood_bank_id integer,
    blood_bank_name varchar(20),
    blood_bank_address varchar(20),
    blood_bank_contact_no varchar(20),
    primary key (blood_bank_id)
);

create table Donate(
    donate_id integer,
    donar_id integer,
    date_of_donation date,
    blood_bank_id integer,
    primary key(donate_id),
    foreign key (donar_id) references Donar(donar_id),
    foreign key (blood_bank_id) references BloodBank(blood_bank_id)
);

--After the create of tables--
--Here we insert data into patient table--

insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1001,'RAHIM MIA','A+','N/A','Dhaka','01700000001');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1002,'NAZMUL HASAN','B+','N/A','Rajsahi','01700012501');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1003,'JAFOR IQBAL','A+','N/A','Khulna','01634009436');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1004,'IMRAN HOSSAIN','B+','N/A','Bogura','01344658325');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1005,'KADER AHMED','A-','N/A','Dhaka','01700000003');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1006,'RATAN KHAN','O+','N/A','Dhaka','01772563214');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1007,'FIROZ HOSSAIN','O-','N/A','Barishal','01722200001');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1008,'RAJU AHMED','AB+','N/A','Khulna','01733300001');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1009,'SAGOR AHMED','B+','N/A','Dinajpur','01712300001');
insert into Patient (patient_id,patient_name,blood_group,disease,patient_address,patient_contact_no)
            values(1010,'JALIL MIA','A+','N/A','Dhaka','01700025601');
             

--Here we insert data into donar table--


insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(101,'ABDUS SAMAD','A+','01344236598','Dhaka','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(102,'KHONDOKER MOSHARRAF','A-','01643265798','Dhaka','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(103,'NURAL ISLAM','B+','01714761596','Barishal','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(104,'SHAEKH ABDUR','AB+','01348963256','Khulna','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(105,'DELWAR HOSSAIN','A-','01996325635','Dhaka','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(106,'KAZI ZAFAR','O-','01843256912','Chittagong','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(107,'SHAHABUDDIN','O+','01331426595','Dhaka','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(108,'SAIDUL HOSSAIN','B+','01823659524','Rajsahi','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(109,'FARUK HOSSAIN','A+','01963654126','Chittagong','N/A');
insert into Donar (donar_id,donar_name,blood_group,donar_contact_no,donar_address,disease)
            values(110,'UZZAL KHAN','B+','01772365698','Dhaka','N/A');
 
            
--Here we insert data into bloodbank table--

insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(1,'BBA','Dhaka','01855547656');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(2,'BBB','Khulna','01955521019');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(3,'BBC','Dhaka','01855511561');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(4,'BBD','Rajsahi','01155501942');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(5,'BBE','Dhaka','01655551779');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(6,'BBF','Barishal','01155554134');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(7,'BBG','Dhaka','01555520109');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(8,'BBH','Rajsahi','01655589342');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(9,'BBI','Dhaka','01955589268');
insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_contact_no)
            values(10,'BBJ','Khulna','01155520589');
        

--Here we insert data into donate table--

insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10001,101,TO_DATE('28/03/2020', 'DD/MM/YYYY'),1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10002,104,TO_DATE('27/04/2020', 'DD/MM/YYYY'),2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10003,102,TO_DATE('26/02/2020', 'DD/MM/YYYY'),3);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10004,106,TO_DATE('25/04/2020', 'DD/MM/YYYY'),2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10005,105,TO_DATE('24/05/2019', 'DD/MM/YYYY'),4);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10006,106,TO_DATE('28/02/2020', 'DD/MM/YYYY'),1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10007,107,TO_DATE('27/06/2019', 'DD/MM/YYYY'),2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10008,108,TO_DATE('26/02/2020', 'DD/MM/YYYY'),1);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10009,109,TO_DATE('25/09/2019', 'DD/MM/YYYY'),2);
insert into Donate (donate_id,donar_id,date_of_donation,blood_bank_id)
            values(10010,110,TO_DATE('24/02/2020', 'DD/MM/YYYY'),1);
                                                                                                                                                      
                                                                                                                                                      