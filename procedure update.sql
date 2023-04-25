create procedure updateemp(@eno int,@ename varchar(20),@hiredate date,@salary float,@gender varchar(20))
as
begin
if exists(select * from tblemploy where empno = @eno)
	update tblemploy set empname=@ename,hiredate=@hiredate,salary=@salary,gender=@gender where empno=@eno
		print 'emp no is found'
 else
	print 'not found'
end