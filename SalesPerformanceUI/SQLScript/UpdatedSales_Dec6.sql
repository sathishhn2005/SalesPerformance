USE [SalesPerformance]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetMISDashBoardYearWise]    Script Date: 12/6/2021 3:18:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SP_GetMISDashBoardYearWise] (@Year nvarchar(10))
as
  begin
      declare @TotalAvailableProspects    bigint,
              @TotalConvertedProspects    bigint,
              @TotalLostProspects         bigint,
              @TotalAvailablePolicies     bigint,
              @TotalApprovedPolicies      bigint,
              @TotalLostPolicies          bigint,
              @TotalAvailableStrikeReport bigint,
              @TotalApprovedStrikeReport  bigint,
              @TotalLostStrikeReport      bigint,
              @TotalAvailablePremium      bigint,
              @TotalApprovedPremium       bigint,
              @TotalLostPremium           bigint

      set @TotalAvailableProspects=(select Count(1)
                                    from   AddProspect
                                    where 
                                             year(getdate())=year(ExpiryDate)
                                             
											)
     
      set @TotalConvertedProspects =(select Count(1)
                                     from   AddProspect
                                     where    year(getdate())=year(ExpiryDate)  
                                          
                                                and Status = 'Converted')
      set @TotalLostProspects =(select Count(1)
                                from   AddProspect
                                where  Status = 'Lost'
                                        and year(getdate())=year(ExpiryDate)
                                     )
      set @TotalAvailablePolicies=(select Count(1)
                                   from   TargetFixing
                                   where   year(getdate())=year(PolicyEndDate)
                                         )
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedPolicies =(select Count(1)
                                   from   TargetFixing
                                   where  Status = 'Approved'
                                         and year(getdate())=year(PolicyEndDate)
                                         )
      set @TotalLostPolicies =(select Count(1)
                               from   TargetFixing
                               where  Status = 'Lost'
                                      and year(getdate())=year(PolicyEndDate)
                                      )
      set @TotalAvailableStrikeReport=(select Count(1)
                                       from   TargetFixing
                                       where year(getdate())=year(PolicyEndDate)
                                             
                                      )
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedStrikeReport =(select Count(1)
                                       from   TargetFixing
                                       where  Status = 'Approved'
                                                and year(getdate())=year(PolicyEndDate)
                                             
                                      )
      set @TotalLostStrikeReport =(select Count(1)
                                   from   TargetFixing
                                   where  Status = 'Lost'
                                          and year(getdate())=year(PolicyEndDate)
                                       )
      set @TotalAvailablePremium=(select Sum(Cast(RenewalBase AS BIGINT))
                                  from   TargetFixing
                                  where  year(getdate())=year(PolicyEndDate)
                                        )
      --where year(getdate())=year(PolicyToDate) and month(getdate())=month(PolicyToDate))
      set @TotalApprovedPremium =(select Sum(Cast(RenewalBase AS BIGINT))
                                  from   TargetFixing
                                  where  Status = 'Approved'
                                       and year(getdate())=year(PolicyEndDate)
                                       )
    
	set @TotalLostPremium =(select Sum(Cast(RenewalBase AS BIGINT))
                              from   TargetFixing
                              where  Status = 'Lost'
                                     
                                     and year(getdate())=year(PolicyEndDate)
                                   )
      SET NOCOUNT ON;

      select isnull(@TotalAvailableProspects, 0)    as TotalAvailableProspects,
             isnull(@TotalConvertedProspects, 0)    as TotalConvertedProspects,
             isnull(@TotalLostProspects, 0)         as TotalLostProspects,

             isnull(@TotalAvailablePolicies, 0)     as TotalAvailablePolicies,
             isnull(@TotalApprovedPolicies, 0)      as TotalApprovedPolicies,
             isnull(@TotalLostPolicies, 0)          as TotalLostPolicies,

             isnull(@TotalAvailablePremium, 0)		as TotalAvailablePremium,
             isnull(@TotalApprovedStrikeReport, 0)  as TotalApprovedStrikeReport,
             isnull(@TotalLostStrikeReport, 0)      as TotalLostStrikeReport,

			 isnull(@TotalAvailableStrikeReport, 0) as TotalAvailableStrikeReport,
             isnull(@TotalApprovedPremium, 0)		as TotalApprovedPremium,
             isnull(@TotalLostPremium, 0)			as TotalLostPremium
  end 