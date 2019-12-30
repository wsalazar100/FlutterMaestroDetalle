import 'package:applista/modelos/categoria_model.dart';
import 'package:applista/provider/categoria_provider.dart';
import 'package:flutter/material.dart';

class CategoriaPagina extends StatelessWidget {

   List<Categoria> categorias = List<Categoria>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _barraSuperior(),
      body: _categorias(categorias),
      floatingActionButton: _btnCategorias(),
          );
        }
      
        _barraSuperior() {
          return AppBar(
            title: Text('Categoria'),
          );
        }
      
        _categorias(List<Categoria> categorias) {
          return ListView.builder(
            itemCount: categorias.length,
            itemBuilder: (context,indice) => _elementoCategoria(categorias, indice ),
          );
        }
      
        _elementoCategoria(List<Categoria> categorias, int indice) {
            return ListTile(
              leading: Icon(Icons.access_alarm) ,
              title: Text(categorias[indice].categoria)
              ,);
        }
      
        _btnCategorias() {
          final categoriaPrv = new CategoriaProvider();

          return FloatingActionButton(
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.list),
                  onPressed: (){
                      categoriaPrv.getCategorias().then((res) {
                          print("categorias ===> ");
                          print(res);
                      });
                  },
          );
        }
}
