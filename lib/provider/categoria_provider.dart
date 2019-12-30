import 'dart:async';
import 'dart:convert';

import 'package:applista/modelos/categoria_model.dart';
import 'package:http/http.dart' as http;

class CategoriaProvider {
  String _apiKey = "123";
  String _url = "http://apiasesor.azurewebsites.net/api";
  CategoriaProvider(){}

   List<Categoria> _categorias = new List<Categoria>();
   
   //controler
   final _categoriasCtr = StreamController<List<Categoria>>.broadcast();
   Function(List<Categoria>) get inCategorias => _categoriasCtr.sink.add;
   Stream<List<Categoria>> get outCategorias => _categoriasCtr.stream;

   void destruirStreams() {
     _categoriasCtr?.close();
   }

   Future<List<Categoria>> getCategorias() async {

     final url = Uri.http(_url,'/tvehiculo');
     final res = await http.get(url);
     final datos = json.decode(res.body);
     final categorias = new Categorias.fromJsonList(datos);
     return categorias.items;
     
   }



}