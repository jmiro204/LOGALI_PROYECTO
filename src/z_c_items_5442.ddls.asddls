@EndUserText.label: 'Items'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity z_c_items_5442
  as projection on z_i_items_5442
{
      @UI.facet: [{
                 position: 10,
                 purpose: #STANDARD,
                 type: #IDENTIFICATION_REFERENCE,
                 label: 'Sales order data'
            }]
  key Salesuuid,
  key Itemuuid,
      Id,
      @UI.lineItem: [{ position: 9 }]
      @UI.identification: [{ position: 9 }]
      Iditem,
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
      Name,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      Description,
      @UI.lineItem: [{ position: 30 }]
      Releasedate,
      @UI.lineItem: [{ position: 40 }]
      Discontinueddate,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 30 }]
      Price,
      @UI.lineItem: [{ position: 60 }]
      Height,
      @UI.lineItem: [{ position: 80 }]
      Width,
      @UI.lineItem: [{ position: 90 }]
      Depth,
      @UI.lineItem: [{ position: 100 }]
      @UI.identification: [{ position: 40 }]
      Quantity,
      @UI.lineItem: [{ position: 110 }]
      @UI.identification: [{ position: 50 }]
      @Consumption.valueHelpDefinition: [{entity: {name: 'I_UnitOfMeasure', element: 'UnitOfMeasure' }, useForValidation: true }]
      Unitofmeasure,
      /* Associations */
      _Header : redirected to parent z_c_header_5442
}
