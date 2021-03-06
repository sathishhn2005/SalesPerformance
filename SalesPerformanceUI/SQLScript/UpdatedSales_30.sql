USE [SalesPerformance]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTargetFixing]    Script Date: 12/1/2021 12:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTransaction] (@BusinessType   nvarchar(50),
                                       @PolicyNo       nvarchar(50),
                                    
                                       @PolicyFromDate datetime,
                                       @PolicyToDate   datetime)
as
  begin

   IF (@BusinessType='' )
        BEGIN
		print 1
            SET @BusinessType = NULL 
          
        END
		 IF (@PolicyNo='' )
        BEGIN
		print 1
            SET @PolicyNo= NULL 
          
        END

      Declare @FromDate Nvarchar(50)=''
      Declare @ToDate Nvarchar(50)=''
	  --{"SqlDateTime overflow. Must be between 1/1/1753 12:00:00 AM and 12/31/9999 11:59:59 PM."}
      IF ( ( @PolicyFromDate = '1753-01-01 00:00:00'
              OR @PolicyFromDate = ''
              OR @PolicyFromDate = '1900-01-01' )
           AND ( @PolicyToDate = ''
                  OR @PolicyToDate = '1753-01-01 00:00:00'
                  OR @PolicyToDate = '1900-01-01' ) )
        BEGIN
		print 1
            SET @PolicyFromDate = NULL -- DATEADD(DD, -120, GETDATE())
            SET @PolicyToDate = NULL --GETDATE()
        END
      ELSE
        BEGIN
            SET @FromDate = CONVERT(varchar, CONVERT(date, @PolicyFromDate))
            SET @ToDate =Convert(varchar, CONVERT(date, @PolicyToDate))
        END

      IF ( @PolicyFromDate IS NOT NULL
           AND @PolicyToDate IS NOT NULL )
        BEGIN
            select Id,
                   BusinessType,
                   Producer,
                   ProducerName,
                   PolicyNumber,
                   ProductName,
                   PolicyStartDate,
                   PolicyEndDate,
                   RenewalBase,
                   ProbableBase,
                   Status
            from   TargetFixing
            where  PolicyNumber = @PolicyNo
                   
                   or  Producer = @BusinessType
                   or CONVERT(date, PolicyEndDate) BETWEEN
                       @FromDate AND @ToDate
                    and ISNULL(@PolicyNo, '') = ''
                 
                    and ISNULL(@BusinessType, '') = ''
        end
      else
        begin
		print 2
            select Id,
                   BusinessType,
                   Producer,
                   ProducerName,
                   PolicyNumber,
                   ProductName,
                   PolicyStartDate,
                   PolicyEndDate,
                   RenewalBase,
                   ProbableBase,
                   Status
            from   TargetFixing
             where
           Producer =IIF(@BusinessType IS NULL, Producer, @BusinessType )
		   and PolicyNumber=IIF(@PolicyNo IS NULL, PolicyNumber, @PolicyNo )
        end
  end 

  go

ALTER PROCEDURE [dbo].[SPTFUpdate]
(
@Id int,
@BusinessType nvarchar(100),
  @Producer nvarchar(100),
  @ProducerName nvarchar(100),
  @ProductName nvarchar(100),

  @PolicyNumber nvarchar(100),
  @PolicyStartDate datetime,
  @PolicyEndDate datetime,
  @RenewalBase nvarchar(100),
  @ProbableBase nvarchar(100),
  @Status nvarchar(100)
  
  )

AS BEGIN
declare @ProducerEntry nvarchar(200),@ProducerTypeEntry nvarchar(200)
if(isnumeric (@Producer)>0)
begin
set @ProducerEntry=(select RoleName from RoleMaster where RoleId=@Producer)
end
else if(isnumeric (@Producer)=0)
begin
set @ProducerEntry=(select RoleName from RoleMaster where RoleName=@Producer)
end
set @ProducerTypeEntry=(select ProducerName from ProducerCodeMaster where ProducerCodeId=@ProducerName)


UPDATE TargetFixing SET

BusinessType = @BusinessType,
Producer= @ProducerEntry,
ProducerName= @ProducerTypeEntry,
ProductName= @ProductName,
PolicyNumber= @PolicyNumber,
PolicyStartDate= @PolicyStartDate,
PolicyEndDate= @PolicyEndDate,
RenewalBase= @RenewalBase,
ProbableBase= @ProbableBase,
Status= @Status,
UpdatedAt=GETDATE()




where Id = @Id
END
