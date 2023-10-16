@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity ZC_LIBROS_3682 
    as select from ztb_libros_3682 as Libros
    inner join ztb_catego_3682 as Categoria on Libros.bi_categ = Categoria.bi_categ
    left outer join ZC_CLIENTE_LIB_3682 as Ventas on Libros.id_libro = Ventas.IdLibro
    association [0..*] to ZC_CLIENTES_3682 as _Clientes on $projection.IdLibro =_Clientes.IdLibro 
{
    key Libros.id_libro as IdLibro,
    key Categoria.bi_categ as Categoria,
    Libros.titulo as Titulo,
    Libros.autor as Autor,
    Libros.editorial as Editorial,
    Libros.idioma as Idioma,
    Libros.paginas as Paginas,
    @Semantics.amount.currencyCode: 'Moneda'
    Libros.precio as Precio,
    case
        when Ventas.Ventas < 1 then 0
        when Ventas.Ventas = 1 then 1
        when Ventas.Ventas = 2 then 2
        else  3
     end as Ventas,
     case Ventas.Ventas
        when 0 then ''
        else ''
     end    as Text,
    Libros.moneda as Moneda,
    Libros.formato as Formato,
    Categoria.descripcion,
    Libros.url as Imagen,
    _Clientes
}
