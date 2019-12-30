import 'package:flutter/material.dart';

class ProductoPagina extends StatelessWidget {
  const ProductoPagina({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _barraSuperior(),
        body: Container(
          child: Center(child: Text('Producto')),
        ));
  }

  _barraSuperior() {
    return AppBar(
      title: Text('Producto'),
    );
  }
}
