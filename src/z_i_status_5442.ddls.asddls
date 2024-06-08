@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z_i_status_5442
  as select from zstatus_5442
{
      @ObjectModel.text.element: ['Statustext']
  key status     as Status,
      @Semantics.text: true
      statustext as Statustext
}
