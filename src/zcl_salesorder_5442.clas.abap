CLASS zcl_salesorder_5442 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: tt_status TYPE STANDARD TABLE OF zstatus_5442.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_salesorder_5442 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      DELETE from zheaderd_5442.

*    DATA: lt_status TYPE STANDARD TABLE OF zstatus_5442.
*
*    DELETE FROM zstatus_5442.
*
*    APPEND INITIAL LINE TO lt_status ASSIGNING FIELD-SYMBOL(<fs_status>).
*    <fs_status> = VALUE #(  status = 1 statustext = 'In process'  ).
*    APPEND INITIAL LINE TO lt_status ASSIGNING <fs_status>.
*    <fs_status> = VALUE #(  status = 2 statustext = 'Complete' ).
*
*
*    MODIFY zstatus_5442 FROM TABLE @lt_status.
*
*
*
    COMMIT WORK AND WAIT.

  ENDMETHOD.
ENDCLASS.
