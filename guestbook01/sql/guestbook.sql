-- guestbook

desc guestbook;

select * from guestbook;

-- insert()
insert 
	into guestbook
values (null, name, password, message, now());

-- findAll()
select no, name, message, date_format(reg_date, "%Y-%m-%d")
	from guestbook
order by reg_date desc;

-- select password
select password
	from guestbook
where no=3;

-- delete()
delete from guestbook
	where no=1;
    