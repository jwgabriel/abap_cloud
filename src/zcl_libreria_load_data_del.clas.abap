CLASS zcl_libreria_load_data_del DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_libreria_load_data_del IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA: lt_acc_categoria TYPE TABLE OF ztb_acccateg3682,
        lt_categoria TYPE TABLE OF ztb_catego_3682,
        lt_clientes TYPE TABLE OF ztb_clientes3682,
        lt_libros TYPE TABLE OF ztb_libros_3682,
        lt_clie_libros TYPE TABLE OF ztb_clntslib3682.

  delete from ztb_acccateg3682.

  out->write( sy-dbcnt ).
  out->write( 'ztb_acccateg3682 data inserted successfully' ).

  delete from ztb_catego_3682.

  out->write( sy-dbcnt ).
  out->write( 'ztb_catego_3682 data inserted successfully' ).

  delete from ztb_clientes3682.

  out->write( sy-dbcnt ).
  out->write( 'ztb_clientes3682 data inserted successfully' ).

  delete from ztb_libros_3682.

  out->write( sy-dbcnt ).
  out->write( 'ztb_libros_3682 data inserted successfully' ).

  delete from ztb_clntslib3682.

  out->write( sy-dbcnt ).
  out->write( 'ztb_clntslib3682 data inserted successfully' ).

  ENDMETHOD.
ENDCLASS.
