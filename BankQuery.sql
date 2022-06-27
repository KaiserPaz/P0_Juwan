create database BankingManagementDB

create table CustomerLogin
(
	userName varchar(20),
	password varchar(20),
	accountStatus varchar(20) default 'Active',
	attempts int default(0),
	AccountNumber int

	constraint pk_userName primary key(userName),
	constraint chk_password check(len(password)> 5),
	constraint chk_accountStatus check (accountStatus in ('Active','Blocked','Disabled')),

	

	)

	Alter table CustomerLogin Add Constraint fk_AccountNumber foreign key(AccountNumber)

	SELECT CustomerLogin.accountStatus, Accounts.AccActive FROM Accounts right JOIN CustomerLogin   
	
	insert into CustomerLogin(userName,password,AccountNumber) values('Juwan', 'Password1234', 1111)
	insert into CustomerLogin(userName,password,AccountNumber) values('Ethan', 'Password1234', 2222)
	insert into CustomerLogin(userName,password,AccountNumber) values('Sebastien', 'Password1234', 3333)
	insert into CustomerLogin(userName,password,AccountNumber) values('Action', 'Password1234', 4444)
	insert into CustomerLogin(userName,password,AccountNumber) values('Freddy', 'Password1234', 5555)

	select * from CustomerLogin
		
	create table AdminLogin
(
	userName varchar(20),
	password varchar(20)
)
insert into AdminLogin values('Admin','Password1')
		select * from AdminLogin

		create table Accounts
		(
			AccountNumber int,
			AccountName varchar(20),
			AccountType varchar(20) default 'Checking',
			AccountBalance int,
			AccActive varchar(20) default 'Active',
			
			constraint pk_AccountNumber primary key(AccountNumber),
			constraint chk_AccActive check (AccActive in ('Active','Blocked','Disabled')),
			constraint chk_AccountType check (AccountType in ('Checking','Savings','Loan'))

			)					
					Alter table Accounts Add Constraint fk_AccountNumber foreign key(AccountNumber) references Accounts

					Alter table Accounts drop column trNum 

select * from Accounts
	insert into Accounts(AccountNumber,AccountName, AccountType, AccountBalance, AccActive) values(1111,'juwan richardson', 'Checking', 300, 'Active')
    insert into Accounts(AccountNumber,AccountName, AccountType, AccountBalance, AccActive) values(2222,'ethan hawke', 'Checking', 200, 'Active')
	insert into Accounts(AccountNumber,AccountName, AccountType, AccountBalance, AccActive) values(3333,'sebastien richardson', 'Checking', 400, 'Active')
	insert into Accounts(AccountNumber,AccountName, AccountType, AccountBalance, AccActive) values(4444,'action jackson', 'Checking', 100, 'Active')
	insert into Accounts(AccountNumber,AccountName, AccountType, AccountBalance, AccActive) values(5555,'freddy fasbear', 'Checking', 500, 'Active')
	select * from Accounts
	update CustomerLogin set accountStatus = 'Active' Accounts set AccActive = 'Active' where AccountNumber = @AccountNumber,
	update CustomerLogin set attempts = 0

	delete from Accounts where AccountNumber = 1112

	update Accounts set AccActive = 'Disabled' where AccountNumber = 1111
		create table Transactions 
		( 
		trNum int primary key identity,		
		calender datetime,
		fromAccount int,
		toAccount int,
		Amount int,
		TransferredBy varchar(20)
				
		constraint fromAccount foreign key(fromAccount) references Accounts,
		constraint toAccount foreign key(toAccount) references Accounts
		)
		drop table Transactions
		insert into Transactions
		REFERENCES BankingManagementDB.dbo.Accounts (AccountNumber)
		sp_helpconstraint Transactions
		Alter table Transactions Add Constraint pk_AccountNumber primary key(AccountNumber)  
		Alter table CustomerLogin Add Constraint fk_AccountNumber foreign key(AccountNumber) references Accounts
		select * from Transactions
		select CustomerLogin.userName, Accounts.AccountType, Accounts.AccountBalance, Accounts.AccountNumber FROM Accounts right JOIN CustomerLogin ON CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = userName; 
	select top 10 * from transactions where fromAccount = fromAccount and userName = userName order by calender desc
	insert into Transactions(calender,fromAccount,Amount,transferredBy) values(GETDATE() @fromAccount,@Amount,@transferredBy)
	select * from Accounts
	update Accounts set AccountBalance = AccountBalance  from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = @Juwan;
         			select *  from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = 'Juwan';

update Accounts set AccountBalance = AccountBalance - '10'  from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = 'Juwan';

select * from Accounts right join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = 'Juwan';
select * from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = @userName
				select CustomerLogin.userName, Accounts.AccountBalance, Accounts.AccountNumber FROM Accounts right JOIN CustomerLogin ON CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = userName; 

				select top 10 * from transactions where ANumber = 1111 order by calender desc
		 select * from Accounts  left join CustomerLogin on Accounts.AccountNumber = CustomerLogin.AccountNumber  right join Transactions on CustomerLogin.AccountNumber = Transactions.ANumber;
		 select * from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = @userName
		 update CustomerLogin set password = 'Password1234' where userName = 'Juwan';
		 select * from CustomerLogin;
		 insert into Transactions(ANumber,calender,toAccount,Amount,transferredBy) values (GETDATE())
		 select * from Transactions
		 select CustomerLogin.AccountNumber from Accounts full outer join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = 'Ethan'; 
            sp_help Transactions
select Transactions.calender, Transactions.fromAccount, Transactions.toAccount, Transactions.Amount, Transactions.TransferredBy from Transactions left join CustomerLogin on Transactions.Anumber = CustomerLogin.userName; 

	update Accounts set AccActive = 'Disabled' FROM Accounts right JOIN CustomerLogin on Accounts.AccountNumber = CustomerLogin.AccountNumber where userName = 'Juwan'; update CustomerLogin set accountStatus = 'Blocked' FROM Accounts right JOIN CustomerLogin on Accounts.AccountNumber = CustomerLogin.AccountNumber where userName = 'Juwan';  
	select * from CustomerLogin
	select * from Accounts
	update Accounts set AccActive = 'Disabled' 

select top 10 * from Transactions left join CustomerLogin on Transactions.fromAccount = CustomerLogin.AccountNumber where userName = 'juwan' order by calender desc;

delete  from Transactions

insert into Transactions(calender,fromAccount,toAccount,Amount,transferredBy) values(GETDATE(),1111,5555,10,1);

select top 10 * from Transactions left join CustomerLogin on Transactions.fromAccount = CustomerLogin.AccountNumber where userName = 'Juwan' order by calender desc,trNum

select top 10 * from Transactions inner join CustomerLogin on Transactions.ANumber = CustomerLogin.AccountNumber  left join Accounts on CustomerLogin.AccountNumber = Transactions.ANumber where userName = 'Juwan';
		update Accounts set AccountBalance = AccountBalance from Accounts right join CustomerLogin on CustomerLogin.AccountNumber=Accounts.AccountNumber where userName = userName;