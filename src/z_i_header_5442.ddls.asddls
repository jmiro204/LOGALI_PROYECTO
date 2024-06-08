@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header'
define root view entity z_i_header_5442
  as select from zheader_5442
  composition [0..*] of z_i_items_5442 as _Items
{
  key salesuuid    as Salesuuid,
      id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderstatus  as Orderstatus,
      imageurl     as Imageurl,
      _Items
}
