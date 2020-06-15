use me;

-- tomorrow() Procedura che stampa la data di domani
drop procedure if exists tomorrow;

delimiter //
create procedure tomorrow()
begin
    select now() + Interval 1 day as tomorrow;
end;
// delimiter ;
-- call tomorrow()

delimiter //
create function tomorrow_function()
returns date
begin
    declare date_tomorrow date;
    
    select date_tomorrow
    
    return date_tomorrow;
end;
// delimiter ;

select tomorrow_function() as Tomorrow;

-- tomorrow2() prende in input un nome da stampare
drop procedure if exists tomorrow2;

delimiter //
create procedure tomorrow2(
    in p_name varchar(20)
)
begin
    select concat(now() + Interval 1 day, " ", p_name) as tomorrow;
end;
// delimiter ;

call tomorrow2("Ciao");

-- call tomorrow2(ciao, @result);
-- select @result;

-- tomorrowDay() stampa nome e data tra un numero di giorni che gli passo
drop procedure if exists tomorrow3;

delimiter //
create procedure tomorrow3(
    in p_days integer,
    in p_name varchar(20)
)
begin
    select concat(now() + Interval p_days day, " ", p_name) as tomorrow;
end;
// delimiter ;

call tomorrow3(3, "Ciao");

-- get_coder(id) ritorna nome e cognome di un coder 
delimiter //
create procedure get_coder(in p_coder_id integer)
begin
    select first_name, last_name
    from coders
    where coder_id = p_coder_id;
end;
// delimiter ;

call get_coder(103);


--
SET GLOBAL log_bin_trust_function_creators = 1;

delimiter //
create function printCoder(p_coder_id integer)
returns varchar(46)

begin
declare p_coder_name varchar(46);
select concat(first_name, " ", last_name) 
into p_coder_name 
from coders 
where coder_id = p_coder_id;

return p_coder_name;
end;
// delimiter ;

select printCoder(103);