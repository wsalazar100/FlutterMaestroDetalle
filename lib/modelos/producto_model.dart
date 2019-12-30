// To parse this JSON data, do
//
//     final producto = productoFromJson(jsonString);

import 'dart:convert';

Producto productoFromJson(String str) => Producto.fromJson(json.decode(str));

String productoToJson(Producto data) => json.encode(data.toJson());

class Producto {
    int idCategoria;
    int idProducto;
    String producto;
    String descripcion;

    Producto({
        this.idCategoria,
        this.idProducto,
        this.producto,
        this.descripcion,
    });

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        idCategoria: json["idCategoria"],
        idProducto: json["idProducto"],
        producto: json["producto"],
        descripcion: json["descripcion"],
    );

    Map<String, dynamic> toJson() => {
        "idCategoria": idCategoria,
        "idProducto": idProducto,
        "producto": producto,
        "descripcion": descripcion,
    };
}
