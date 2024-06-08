@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z_i_items_5442
  as select from zitem_5442
  association to parent z_i_header_5442 as _Header on _Header.Salesuuid = $projection.Salesuuid
{
  key salesuuid        as Salesuuid,
  key itemuuid         as Itemuuid,
      id               as Id,
      iditem           as Iditem,
      name             as Name,
      description      as Description,
      releasedate      as Releasedate,
      discontinueddate as Discontinueddate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      width            as Width,
      @Semantics.quantity.unitOfMeasure: 'Unitofmeasure'
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as Unitofmeasure,
      _Header
}
