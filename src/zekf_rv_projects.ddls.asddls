@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View for Projects'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zekf_rv_projects
  as select from zekf_t_projects
  //composition of target_data_source_name as _association_name
{
  key project_id      as ProjectId,
      start_date      as StartDate,
      end_date        as EndDate,
//      @Semantics.amount.currencyCode: 'CurrencyCode'
      (cast (budget as abap.char(20))) as Budget,
      currency_code   as CurrencyCode,
      manager         as Manager
      //    _association_name // Make association public
}

//@EndUserText.label: 'Overall Budget'
//      //      cast('' as abap.fltp) as Overallbudget,
//      cast(cast(concat('', '.00') as abap.numc(20) ) as wrbtr_23_2) as Overallbudget,
