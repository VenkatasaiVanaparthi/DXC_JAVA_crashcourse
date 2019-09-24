

create or replace trigger trgemp
    after insert
    on emp
    for each row
    begin
    insert into empBackup values (:new.emp_id,:new.emp_name,:new.age,:new.dept_id)
   ;
  end;
    /
    
    create table empbin(emp_id int, emp_name varchar(10), age int, dept_id int);
    
    
    
    create or replace trigger trgbin
    before delete
    on emp
    for each row
    begin
    insert into empbin values (:old.emp_id,:old.emp_name,:old.age,:old.dept_id)
   ;
  end;
    /
    
    
    
      create or replace trigger trgdob
    after insert
    on dob
    for each row
    begin
    if (:new.mydob > sysdate) then Raise_Application_Error (-20343, 'The balance is too low.');
    end if
   ;
  end;
    /
    
    
    
    
    
    
    
      create or replace trigger trgdob
    after insert
    on dob
    for each row
    begin
    if ((sysdate - :new.date)) then Raise_Application_Error (-20343, 'Age is less than 18');
    end if
   ;
  end;
    /
    
    
    
    
    create table TT(
    WDAY VARCHAR(10) NOT NULL,
    SSN INT NOT NULL,
    ROOM INT NOT NULL,
    SEM INT NOT NULL,
    SUB VARCHAR(10),
    CONSTRAINT UC unique()
    );
    
    
    
    
    
    
    
    