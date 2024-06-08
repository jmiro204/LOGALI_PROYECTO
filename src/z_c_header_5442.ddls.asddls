@EndUserText.label: 'Header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI.headerInfo:{
    title:{ type: #STANDARD, value: 'Id' },
    description:{ type: #STANDARD, value: 'Firstname' },
    typeName: 'Order',
    typeNamePlural: 'Orders'

}
define root view entity z_c_header_5442
  provider contract transactional_query
  as projection on z_i_header_5442
{
      @UI.facet: [{
            position: 10,
            purpose: #STANDARD,
            type: #COLLECTION,
            label: 'Sales order',
            id: 'tarfetColl1'
       },
       {
            position: 10,
            purpose: #STANDARD,
            type: #IDENTIFICATION_REFERENCE,
            label: 'Sales order data',
            parentId: 'tarfetColl1'
       },
       {
            position: 20,
            purpose: #STANDARD,
            type: #LINEITEM_REFERENCE,
            targetElement: '_Items',
            label: 'Sales order items',
            parentId: 'tarfetColl1'
       }]
  key Salesuuid,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 9 }]
      Id,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 10 }]
      Email,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 20 }]
      Firstname,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 30 }]
      Lastname,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 40 }]
      Country,
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 70 }]
      @Consumption.filter.selectionType: #RANGE
      Createon,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 80 }]
      @Consumption.filter.selectionType: #RANGE
      @UI.identification: [{ position: 50 }]
      Deliverydate,
      @UI.lineItem: [{ position: 90 }]
      @UI.selectionField: [{ position: 30 }]
      @Consumption.valueHelpDefinition: [{ entity:{ name: 'z_i_status_5442', element: 'Status' } }]
      @UI.identification: [{ position: 60 }]
      Orderstatus,
      Imageurl,
      /* Associations */
      _Items : redirected to composition child z_c_items_5442
}
