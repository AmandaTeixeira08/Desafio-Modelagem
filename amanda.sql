create table tbven (
cdven int primary key,
dtven date,
cdcli int, -- FK
qtven decimal(18,2));

create table tbcli (
cdcli int primary key,
nmcli varchar(60)
);

alter table tbven
ADD FOREIGN KEY (cdcli) REFERENCES tbcli(cdcli);


insert into tbcli(cdcli, nmcli) values(1, 'cliente 1');
insert into tbcli(cdcli, nmcli) values(2, 'cliente 2');
insert into tbcli(cdcli, nmcli) values(3, 'cliente 3');
insert into tbcli(cdcli, nmcli) values(4, 'cliente 4');
insert into tbcli(cdcli, nmcli) values(5, 'cliente 5');

select * from tbcli

insert into tbven (cdven, dtven, cdcli, qtven) values (1, '20230329' ,1,35.50);

select * from tbven

select * 
  from tbven v
  join tbcli c on c.cdcli = v.cdcli;