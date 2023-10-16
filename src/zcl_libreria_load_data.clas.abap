CLASS zcl_libreria_load_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_libreria_load_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA: lt_acc_categoria TYPE TABLE OF ztb_acccateg3682,
        lt_categoria TYPE TABLE OF ztb_catego_3682,
        lt_clientes TYPE TABLE OF ztb_clientes3682,
        lt_libros TYPE TABLE OF ztb_libros_3682,
        lt_clie_libros TYPE TABLE OF ztb_clntslib3682.


  lt_acc_categoria = VALUE #(
    ( bi_categ = 'F' tipo_accceso = '1' )
    ( bi_categ = 'N' tipo_accceso = '1' )
    ( bi_categ = 'P' tipo_accceso = '1' )
    ( bi_categ = 'M' tipo_accceso = '1' )
    ( bi_categ = 'R' tipo_accceso = '1' )
    ( bi_categ = 'L' tipo_accceso = '1' )
    ( bi_categ = 'M' tipo_accceso = '2' )
    ( bi_categ = 'R' tipo_accceso = '2' )
    ( bi_categ = 'L' tipo_accceso = '2' )
    ( bi_categ = 'A' tipo_accceso = '2' )
    ( bi_categ = 'Y' tipo_accceso = '2' )
    ( bi_categ = 'L' tipo_accceso = '3' )
    ( bi_categ = 'A' tipo_accceso = '3' )
    ( bi_categ = 'Y' tipo_accceso = '3' )
    ( bi_categ = 'C' tipo_accceso = '3' )
    ( bi_categ = 'S' tipo_accceso = '3' )
    ( bi_categ = 'E' tipo_accceso = '3' )
    ( bi_categ = 'R' tipo_accceso = '4' )
    ( bi_categ = 'L' tipo_accceso = '4' )
    ( bi_categ = 'M' tipo_accceso = '4' )
    ( bi_categ = 'A' tipo_accceso = '4' )
    ( bi_categ = 'Y' tipo_accceso = '4' )

  ).
  delete from ztb_acccateg3682.
  insert ztb_acccateg3682 from table @lt_acc_categoria.

  select * from ztb_acccateg3682 into table @lt_acc_categoria.

  out->write( sy-dbcnt ).
  out->write( 'ztb_acccateg3682 data inserted successfully' ).

  lt_categoria = VALUE #(
    ( bi_categ = 'F' descripcion = 'Ficción' )
    ( bi_categ = 'N' descripcion = 'Negocios y economía' )
    ( bi_categ = 'P' descripcion = 'Política y sociedad' )
    ( bi_categ = 'M' descripcion = 'Medio ambiente y sostenibilidad' )
    ( bi_categ = 'R' descripcion = 'Religión y espiritualidad' )
    ( bi_categ = 'L' descripcion = 'Literatura infantil y juvenil' )
    ( bi_categ = 'A' descripcion = 'Artes y entretenimiento' )
    ( bi_categ = 'Y' descripcion = 'Autoayuda y desarrollo personal' )
    ( bi_categ = 'C' descripcion = 'Ciencia y tecnología' )
    ( bi_categ = 'S' descripcion = 'Relaciones sociales' )
    ( bi_categ = 'E' descripcion = 'Educación y libros académicos' )


  ).
  delete from ztb_catego_3682.
  insert ztb_catego_3682 from table @lt_categoria.

  select * from ztb_catego_3682 into table @lt_categoria.

  out->write( sy-dbcnt ).
  out->write( 'ztb_catego_3682 data inserted successfully' ).


  lt_clientes = VALUE #(
    (  id_cliente = '000001' tipo_acceso = '1' nombre = 'ADRIANA' apellidos = 'MENDOZA MORALES' email = 'ADRIANA@gmail.com' url = 'https://MORALES.personas.com/page/view' )
    (  id_cliente = '000002' tipo_acceso = '2' nombre = 'LUIS ALBERTO' apellidos = 'TERRAZAS CARDENAS' email = 'LUISALBERTO@gmail.com' url = 'https://CARDENAS.personas.com/page/view' )
    (  id_cliente = '000003' tipo_acceso = '3' nombre = 'YANETTE PRUDENCIA' apellidos = 'ALANOCA YANARICO' email = 'YANETTEPRUDENCIA@gmail.com' url = 'https://YANARICO.personas.com/page/view' )
    (  id_cliente = '000004' tipo_acceso = '3' nombre = 'EMERSONMAURICIO' apellidos = 'RAMOS MAYDANA' email = 'EMERSONMAURICIO@gmail.com' url = 'https://MAYDANA.personas.com/page/view' )
    (  id_cliente = '000005' tipo_acceso = '3' nombre = 'LIZETH' apellidos = 'ROJAS MENDOZA' email = 'LIZETH@gmail.com' url = 'https://MENDOZA.personas.com/page/view' )
    (  id_cliente = '000006' tipo_acceso = '3' nombre = 'MARCO ANTONIO' apellidos = 'AGUILAR VÁSQUEZ' email = 'MARCOANTONIO@gmail.com' url = 'https://VÁSQUEZ.personas.com/page/view' )
    (  id_cliente = '000007' tipo_acceso = '2' nombre = 'NATALIA SHIRLEY' apellidos = 'VERA ARISPE' email = 'NATALIASHIRLEY@gmail.com' url = 'https://ARISPE.personas.com/page/view' )
    (  id_cliente = '000008' tipo_acceso = '1' nombre = 'SHIRLEY' apellidos = 'CONDORI LÓPEZ' email = 'SHIRLEY@gmail.com' url = 'https://LÓPEZ.personas.com/page/view' )
    (  id_cliente = '000009' tipo_acceso = '1' nombre = 'NICETH JESSICA' apellidos = 'SOTO RUILOVA' email = 'NICETHJESSICA@gmail.com' url = 'https://RUILOVA.personas.com/page/view' )
    (  id_cliente = '000010' tipo_acceso = '1' nombre = 'LOURDES' apellidos = 'MAMANI QUISPE' email = 'LOURDES@gmail.com' url = 'https://QUISPE.personas.com/page/view' )
    (  id_cliente = '000011' tipo_acceso = '2' nombre = 'MIRTHA FORTUNATA' apellidos = 'APAZA MONTECINOS' email = 'MIRTHAFORTUNATA@gmail.com' url = 'https://MONTECINOS.personas.com/page/view' )
    (  id_cliente = '000012' tipo_acceso = '3' nombre = 'MARIA NIEVES' apellidos = 'ORUÑO FLORES' email = 'MARIANIEVES@gmail.com' url = 'https://FLORES.personas.com/page/view' )
    (  id_cliente = '000013' tipo_acceso = '2' nombre = 'EDIBERTO SANTIAGO' apellidos = 'TARQUI AYALA' email = 'EDIBERTOSANTIAGO@gmail.com' url = 'https://AYALA.personas.com/page/view' )"
    (  id_cliente = '000014' tipo_acceso = '4' nombre = 'NEISA NELLY' apellidos = 'HUANCA SANTA CRUZ' email = 'NEISANELLY@gmail.com' url = 'https://SANTA CRUZ.personas.com/page/view' )
    (  id_cliente = '000015' tipo_acceso = '4' nombre = 'EDWIN' apellidos = 'MAMANI MACHACA' email = 'EDWIN@gmail.com' url = 'https://MACHACA.personas.com/page/view' )
    (  id_cliente = '000016' tipo_acceso = '4' nombre = 'AMÉRICA' apellidos = 'CHOQUE BALDERRAMA' email = 'AMERICA@gmail.com' url = 'https://BALDERRAMA.personas.com/page/view' )
    (  id_cliente = '000017' tipo_acceso = '4' nombre = 'FREDDY ELOY' apellidos = 'MAMANI DURAN' email = 'FREDDYELOY@gmail.com' url = 'https://DURAN.personas.com/page/view' )
    (  id_cliente = '000018' tipo_acceso = '2' nombre = 'ANTONIO' apellidos = 'VILLCA CONDORI' email = 'ANTONIO@gmail.com' url = 'https://CONDORI.personas.com/page/view' )
    (  id_cliente = '000019' tipo_acceso = '2' nombre = 'LUZ BRITZYE' apellidos = 'GUTIÉRREZ CRUZ' email = 'LUZBRITZYE@gmail.com' url = 'https://CRUZ.personas.com/page/view' )
    (  id_cliente = '000020' tipo_acceso = '2' nombre = 'ELIAS MARIO' apellidos = 'MAMANI MONTECINOS' email = 'ELIASMARIO@gmail.com' url = 'https://MONTECINOS.personas.com/page/view' )
    (  id_cliente = '000021' tipo_acceso = '1' nombre = 'MIGUEL ANGEL' apellidos = 'CHILE ALCAZAR' email = 'MIGUELANGEL@gmail.com' url = 'https://ALCAZAR.personas.com/page/view' )

  ).
  delete from ztb_clientes3682.
  insert ztb_clientes3682 from table @lt_clientes.

  select * from ztb_clientes3682 into table @lt_clientes.

  out->write( sy-dbcnt ).
  out->write( 'ztb_clientes3682 data inserted successfully' ).


  lt_libros = VALUE #(
    (  id_libro = '000001' bi_categ = 'F' titulo = 'Cien años de soledad' autor = 'Gabriel García Márquez' editorial = 'Editorial Sudamericana' idioma = 'Español' paginas = '432' precio = '20' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000002' bi_categ = 'N' titulo = '1984' autor = 'George Orwell' editorial = 'Penguin Books' idioma = 'Inglés' paginas = '328' precio = '16' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000003' bi_categ = 'P' titulo = 'El Gran Gatsby' autor = 'F. Scott Fitzgerald' editorial = 'Scribner' idioma = 'Inglés' paginas = '180' precio = '13' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000004' bi_categ = 'M' titulo = 'Matar a un ruiseñor' autor = 'Harper Lee' editorial = 'J. B. Lippincott' idioma = 'Inglés' paginas = '376' precio = '25' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000005' bi_categ = 'R' titulo = 'Harry Potter y la piedra filosofal' autor = 'J.K. Rowling' editorial = 'Bloomsbury' idioma = 'Español' paginas = '320' precio = '15' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000006' bi_categ = 'L' titulo = 'La Sombra del Viento' autor = 'Carlos Ruiz Zafón' editorial = 'Planeta' idioma = 'Español' paginas = '567' precio = '26' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000007' bi_categ = 'R' titulo = 'El Hobbit' autor = 'J.R.R. Tolkien' editorial = 'Editorial Minotauro' idioma = 'Español' paginas = '304' precio = '19' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000008' bi_categ = 'N' titulo = 'Breve historia del tiempo' autor = 'Stephen Hawking' editorial = 'Bantam' idioma = 'Español' paginas = '256' precio = '22' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000009' bi_categ = 'R' titulo = 'Los juegos del hambre' autor = 'Suzanne Collins' editorial = 'Editorial JKL' idioma = 'Español' paginas = '374' precio = '19.95' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000010' bi_categ = 'R' titulo = 'Don Quijote de la Mancha' autor = 'Miguel de Cervantes' editorial = 'Editorial MNO' idioma = 'Español' paginas = '863' precio = '28' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000011' bi_categ = 'F' titulo = 'El alquimista' autor = 'Paulo Coelho' editorial = 'Editorial STU' idioma = 'Español' paginas = '208' precio = '15.5' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000012' bi_categ = 'F' titulo = 'Crimen y castigo' autor = 'Fyodor Dostoevsky' editorial = 'Editorial VWX' idioma = 'Español' paginas = '544' precio = '24.95' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000013' bi_categ = 'M' titulo = 'Orgullo y prejuicio' autor = 'Jane Austen' editorial = 'Editorial YZA' idioma = 'Español' paginas = '368' precio = '17.25' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000014' bi_categ = 'M' titulo = 'To Kill a Mockingbird' autor = 'Harper Lee' editorial = 'HarperCollins' idioma = 'Inglés' paginas = '336' precio = '10.99' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000015' bi_categ = 'R' titulo = 'Pride and Prejudice' autor = 'Jane Austen' editorial = 'Vintage Classics' idioma = 'Inglés' paginas = '432' precio = '9.99' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )
    (  id_libro = '000016' bi_categ = 'P' titulo = 'The Catcher in the Rye' autor = 'J.D. Salinger' editorial = 'Little, Brown' idioma = 'Inglés' paginas = '224' precio = '13.75' moneda = 'USD' formato = 'D' url =
'https://www.google.com.pe/books/edition/La_Sombra_del_Viento' )

  ).
  delete from ztb_libros_3682.
  insert ztb_libros_3682 from table @lt_libros.

  select * from ztb_libros_3682 into table @lt_libros.

  out->write( sy-dbcnt ).
  out->write( 'ztb_libros_3682 data inserted successfully' ).

  lt_clie_libros = VALUE #(
    (  id_cliente = '000003'  id_libro = '000006' )
    (  id_cliente = '000004'  id_libro = '000007' )
    (  id_cliente = '000005'  id_libro = '000008' )
    (  id_cliente = '000006'  id_libro = '000009' )
    (  id_cliente = '000007'  id_libro = '000010' )
    (  id_cliente = '000008'  id_libro = '000011' )
    (  id_cliente = '000009'  id_libro = '000012' )
    (  id_cliente = '000010'  id_libro = '000013' )
    (  id_cliente = '000011'  id_libro = '000014' )
    (  id_cliente = '000012'  id_libro = '000015' )
    (  id_cliente = '000013'  id_libro = '000003' )
    (  id_cliente = '000014'  id_libro = '000004' )
    (  id_cliente = '000015'  id_libro = '000005' )
    (  id_cliente = '000007'  id_libro = '000005' )
    (  id_cliente = '000007'  id_libro = '000006' )
    (  id_cliente = '000007'  id_libro = '000007' )
    (  id_cliente = '000005'  id_libro = '000014' )
    (  id_cliente = '000005'  id_libro = '000015' )
    (  id_cliente = '000005'  id_libro = '000016' )
    (  id_cliente = '000011'  id_libro = '000001' )
    (  id_cliente = '000011'  id_libro = '000002' )
    (  id_cliente = '000009'  id_libro = '000003' )
    (  id_cliente = '000009'  id_libro = '000004' )
    (  id_cliente = '000009'  id_libro = '000005' )


  ).
  delete from ztb_clntslib3682.
  insert ztb_clntslib3682 from table @lt_clie_libros.

  select * from ztb_clntslib3682 into table @lt_clie_libros.

  out->write( sy-dbcnt ).
  out->write( 'ztb_clntslib3682 data inserted successfully' ).


  ENDMETHOD.
ENDCLASS.
