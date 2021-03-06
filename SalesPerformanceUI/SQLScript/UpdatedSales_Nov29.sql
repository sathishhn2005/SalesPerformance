USE [SalesPerformance]
GO
/****** Object:  StoredProcedure [dbo].[SPTFUpdate]    Script Date: 11/28/2021 10:21:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


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
UPDATE TargetFixing SET

BusinessType = @BusinessType,
Producer= @Producer,
ProducerName= @ProducerName,
ProductName= @ProductName,
PolicyNumber= @PolicyNumber,
PolicyStartDate= @PolicyStartDate,
PolicyEndDate= @PolicyEndDate,
RenewalBase= @RenewalBase,
ProbableBase= @ProbableBase,
Status= @Status




where Id = @Id
END


go
create proc [dbo].[SP_GetTargetFixing] (@BusinessType   nvarchar(50),
                                       @Producer       nvarchar(50),
                                       @ProducerName   nvarchar(50),
                                       @PolicyFromDate datetime,
                                       @PolicyToDate   datetime)
as
  begin
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
            where  Producer = @Producer
                   and @ProducerName = ProducerName
                   and @BusinessType = BusinessType
                   and CONVERT(date, PolicyEndDate) BETWEEN
                       @FromDate AND @ToDate
                    OR ISNULL(@Producer, '') = ''
                    OR ISNULL(@ProducerName, '') = ''
                    OR ISNULL(@BusinessType, '') = ''
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
            where  Producer = @Producer
                   or @ProducerName = ProducerName
                   or @BusinessType = BusinessType
                 --OR ISNULL(@Producer, '') = ''
                 --   OR ISNULL(@ProducerName, '') = ''
                 --   OR ISNULL(@BusinessType, '') = ''
        end
  end 