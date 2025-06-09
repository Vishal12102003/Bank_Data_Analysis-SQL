Create DataBase Bank_Data_Analysis;
use Bank_Data_Analysis;

select *from bankdataanalystics;

#1
Select Sum(LoanAmount) As Total_Loan
from bankdataanalystics;

#2
select Count(ClientName) as Total_No_Loans
from bankdataanalystics;

#3
Select Round(Sum(TotalPymnt+TotalRecPrncp+TotalRrecint)) As Total_collection
From bankdataanalystics;

#4
Select round(Sum(FundedAmount*IntRate)) As Total_Int
from bankdataanalystics;

#5
Select BranchName, Round(Sum(TotalFees+TotalRrecint)) As Sum_Amount
From bankdataanalystics
group by BranchName;

#6
select StateName, Round(Sum(LoanAmount)) as Total_Amount
from bankdataanalystics
group by StateName;

#7
select religion, Round(Sum(LoanAmount)) as Total_Amount
from bankdataanalystics
group by religion;

#8
Select PurposeCategory, Round(Sum(LoanAmount)) as Total_Amount
from bankdataanalystics
group by PurposeCategory;

#9
Select DisbursementDateyears, Round(Sum(LoanAmount)) as Total_Amount
from bankdataanalystics
group by DisbursementDateyears;

#10
select *from bankdataanalystics;

Select Grade, 
             concat(
			 left(
			 Sum(LoanAmount), 3)," M")as Loan_amount
from bankdataanalystics
group by Grade
order by Grade;

#11
Select IsDefaultLoan, 
	   Count(IsDefaultLoan) as No_default
From bankdataanalystics
where IsDefaultLoan="Y"
group by IsDefaultLoan;

#12
select *from bankdataanalystics;

Select IsDelinquentLoan, 
	   Count(LoanAmount) as No_DelinquentLoan
From bankdataanalystics
where IsDelinquentLoan="Y"
group by IsDelinquentLoan;

#13
select IsDelinquentLoan, 
concat(
Round(
Sum(LoanAmount) / (select sum(LoanAmount) From bankdataanalystics)*100),"%") as Percent_Of_Default
from bankdataanalystics 
Where IsDelinquentLoan="Y"
group by IsDelinquentLoan;

#14
select IsDefaultLoan, 
concat(
Round(
Sum(LoanAmount) / (select sum(LoanAmount) From bankdataanalystics)*100),"%") as Percent_Of_Default
from bankdataanalystics 
Where IsDefaultLoan="Y"
group by IsDefaultLoan;

#15
select LoanStatus,
	   Concat(
       left(
       sum(LoanAmount), 3), " Lakhs") as Loan_amt
from bankdataanalystics
group by LoanStatus
order by Loan_amt desc;

#16
select *from bankdataanalystics;

select age, 
		concat(
        left(
        Sum(LoanAmount),3)," M") as Loan_amt
from bankdataanalystics
group by age
order by Loan_Amt desc;

#17
select *from bankdataanalystics;

Select VerificationStatus, Count(VerificationStatus) as No_not_vari
from bankdataanalystics
where VerificationStatus='Not Verified';

#18

select *from bankdataanalystics;

select term, count(LoanAmount) as Loan_Count
from bankdataanalystics
where LoanStatus = "Fully Paid"
group by Term;

#bstr_to_date(DisbursementDate, "%d-%m-%Y") as start_date, str_to_date(closeddate, "%d-%m-%Y") as end_date;
 
#select *from bankdataanalystics;

#Select str_to_date(DisbursementDate, "%d-%m-%Y") as start_date from bankdataanalystics;
#Select str_to_date(closeddate, "%d-%m-%Y") as end_date from bankdataanalystics;

#altering the column - DisbursementDate, closeddate

#start transaction;
#alter table	bankdataanalystics add disbursementdate date;
#rollback;
 
select loanstatus, 
        Concat(
        Round(
        avg(
        datediff(str_to_date(closeddate, "%d-%m-%Y"), 
        str_to_date(DisbursementDate, "%d-%m-%Y")) / 30.5),
        2), 
        " Months") 
        as  Month_Duration
from bankdataanalystics
where LoanStatus='Fully Paid';
