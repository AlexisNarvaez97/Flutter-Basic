import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

}


class _ContadorPageState extends State<ContadorPage> {

  final estiloTexto = new TextStyle(fontSize: 30);

  int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto),
            Text('$conteo', style: estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }


  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 20),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _ceros ),
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _menos),
        SizedBox(width: 10.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar),
        SizedBox(width: 10.0),
      ],
    );

  }


  void _agregar() {
    setState(() {
      conteo++;
    });
  }

  void _ceros() {
    setState(() {
      conteo = 0;
    });
  }

  void _menos() {
    setState(() {
      conteo--;
    });
  }

}