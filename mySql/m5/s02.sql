-- life of a Stored Procedure

use me;

drop procedure if exists hello;

delimiter //

create procedure hello()
begin
	select "Hello!" as greetings;
end;hello

// delimiter ;

call hello();
