// To parse this JSON data, do
//
//     final categoria = categoriaFromJson(jsonString);

import 'dart:convert';

// CATEGORIA
Categoria categoriaFromJson(String str) => Categoria.fromJson(json.decode(str));

String categoriaToJson(Categoria data) => json.encode(data.toJson());

class Categoria {
    int idCategoria;
    String categoria;
    String descripcion;

    Categoria({
        this.idCategoria,
        this.categoria,
        this.descripcion,
    });

    factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        idCategoria:  json["idtipovehiculo"], //json["idCategoria"],
        categoria:  json["tipovehiculo"], //json["categoria"],
        descripcion: json["tipovehiculo"], //json["descripcion"],
    );

    Map<String, dynamic> toJson() => {
        "idCategoria": idCategoria,
        "categoria": categoria,
        "descripcion": descripcion,
    };
}

// CATEGORIAS
class Categorias {

  List<Categoria> items = new List<Categoria>();

  Categorias();

  Categorias.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Categoria.fromJson(item);
      items.add( pelicula );
    }

  }

}
