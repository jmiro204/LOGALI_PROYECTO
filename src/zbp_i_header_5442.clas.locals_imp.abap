CLASS lhc_z_i_items_5442 DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS validation FOR VALIDATE ON SAVE
      IMPORTING keys FOR z_i_items_5442~validation.

ENDCLASS.

CLASS lhc_z_i_items_5442 IMPLEMENTATION.

  METHOD validation.

     READ ENTITIES OF z_i_header_5442 IN LOCAL MODE
         ENTITY z_i_header_5442
         ALL FIELDS WITH CORRESPONDING #( keys )
         RESULT DATA(lt_header).

    READ ENTITIES OF z_i_header_5442 IN LOCAL MODE
         ENTITY z_i_items_5442
         ALL FIELDS WITH CORRESPONDING #( keys )
         RESULT DATA(lt_items).



    IF lt_items IS INITIAL.

      READ TABLE lt_header INDEX 1 into data(ls_header).
      APPEND VALUE #( %tky = ls_header-%tky ) TO failed-z_i_header_5442.
      APPEND VALUE #( %tky = ls_header-%tky
                      %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                    text = 'Mandatory to indicate an item' )
                     ) TO reported-z_i_header_5442.

    ELSE.

      LOOP AT lt_items INTO DATA(ls_item).

        IF ls_item-Iditem IS INITIAL .
          APPEND VALUE #( %tky = ls_item-%tky ) TO failed-z_i_items_5442.
          APPEND VALUE #( %tky = ls_item-%tky
                          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                        text = 'Field Order Item ID is mandatory' )
                          %element-Iditem = if_abap_behv=>mk-on
                         ) TO reported-z_i_items_5442.
        ENDIF.
      ENDLOOP.


    ENDIF.

  ENDMETHOD.

ENDCLASS.

CLASS lhc_z_i_header_5442 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR z_i_header_5442 RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR z_i_header_5442 RESULT result.

    METHODS Resume FOR MODIFY
      IMPORTING keys FOR ACTION z_i_header_5442~Resume.
    METHODS validation FOR VALIDATE ON SAVE
      IMPORTING keys FOR z_i_header_5442~validation.

ENDCLASS.

CLASS lhc_z_i_header_5442 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Resume.
  ENDMETHOD.

  METHOD validation.

    READ ENTITIES OF z_i_header_5442 IN LOCAL MODE
         ENTITY z_i_header_5442
         ALL FIELDS WITH CORRESPONDING #( keys )
         RESULT DATA(lt_header).


    LOOP AT lt_header INTO DATA(ls_header).

      IF ls_header-Id IS INITIAL .
        APPEND VALUE #( %tky = ls_header-%tky ) TO failed-z_i_header_5442.
        APPEND VALUE #( %tky = ls_header-%tky
                        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                      text = 'Field Order ID is mandatory' )
                        %element-Id = if_abap_behv=>mk-on
                       ) TO reported-z_i_header_5442.
      ENDIF.
      IF ls_header-Email IS INITIAL .
        APPEND VALUE #( %tky = ls_header-%tky ) TO failed-z_i_header_5442.
        APPEND VALUE #( %tky = ls_header-%tky
                        %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                      text = 'Field Order Email is mandatory' )
                        %element-Email = if_abap_behv=>mk-on
                       ) TO reported-z_i_header_5442.
      ENDIF.
    ENDLOOP.




  ENDMETHOD.

ENDCLASS.
