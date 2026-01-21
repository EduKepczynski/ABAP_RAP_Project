@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View for Projects'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zekf_rv_projects
  as select from zekf_t_projects
  //composition of target_data_source_name as _association_name
{
  key project_id    as ProjectId,
      start_date    as StartDate,
      end_date      as EndDate,
      currency_code as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      budget        as Budget,
      manager       as Manager
      //    _association_name // Make association public
}
