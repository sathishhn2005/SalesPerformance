--exec [SP_GetBIDashBoardYearWise] 'NewBusiness'

create proc [dbo].[SP_GetBIDashBoardYearWise] (@BusinessType nvarchar(50))
AS 
BEGIN
declare @tt table(
Calenderid int,
MonthName nvarchar(50),
Lost int,
Renewed int,
[Under Process] int,
[To Be Renewed] int,
Year int
)

insert into @tt(Year,Lost,Renewed,[Under Process],[To Be Renewed])

select * from (select Year(PolicyEndDate) Year,PolicyNumber,IsNull(Status,'Approved') as Status from
TargetFixing M 


where BusinessType=@BusinessType --and year(policyToDate)=year(Getdate())
) t
pivot
(Count (PolicyNumber) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table 

select Year as y,Renewed as a, sum(lost+Renewed+[Under Process]+[To Be Renewed])  as b,@BusinessType as BusinessType from @tt  group by Lost,year,Renewed order by year

end

go
--exec [SP_GetBIDashBoardMonthWise] 'Renewal'
create proc [dbo].[SP_GetBIDashBoardMonthWise] (@BusinessType nvarchar(50))
AS 
BEGIN
declare @tt table(
Calenderid int,
MonthName nvarchar(50),
Lost int,
Renewed int,
[Under process] int,
[To Be Renewed] int
)

begin 

insert into @tt(Calenderid,MonthName,Lost,Renewed,[Under process],[To Be Renewed])

select * from (select c.Calenderid, c.MonthName,PolicyNumber,IsNull(Status,'Approved') as Status from
TargetFixing M 

right join TB_Calender C on C.MonthName=DATENAME(month, PolicyEndDate) and year(getdate())=year(PolicyEndDate)
where BusinessType=@BusinessType
) t
pivot
(Count (PolicyNumber) for Status in([Lost],[Renewed],[Under Process],[To Be Renewed])) as pivot_final_table order by CalenderId

end

select CalenderId,MonthName,Renewed, sum(lost+Renewed+[Under Process]+[To Be Renewed]) as Available,@BusinessType as BusinessType from @tt  group by Lost, Calenderid, MonthName,Renewed order by Calenderid
END



go