import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize:  20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize:  18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),          
          ]
        ),
      ),
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://cdn.dribbble.com/users/1016207/screenshots/3391077/14.jpg'),
        height: 300.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 0.0 ),
        child: Row(
          children: <Widget>[
            Expanded(//toma todo el espacio posible
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //alienamiento al principio
                children: <Widget>[
                  Text('Lago vector', style: estiloTitulo,),
                  SizedBox( height: 7.0 ),
                  Text('Un paisaje de lago vectorizado', style: estiloSubTitulo),
                ],
              ),
            ),
            Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0 ))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion( Icons.call, 'CALL'),
        _accion( Icons.near_me, 'ROUTE'),
        _accion( Icons.share, 'SHARE'),
      ],
    );

  }

  Widget _accion( IconData icon, String texto ){
    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ,),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ) ),
      ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 1.0),
        child: Text(
          'fsdfjbsd sdfhsdnsd dhfsdh jkfhsdfjk  jklfhdsfj hjklsdhf sdjklfh jklsdhf khfsdfh jklfsdh jklf klfhklspjhf khfiioh fofh oif konfkhfijh jkohnolsfh iofh sdlfhnsdklfhiophf sd hsdiofhosdnfklnljhsd jhfosdfhklsdhnfkl jhfiosdfhksdh kfxjhzklcvnijh hlsdfhlsdhnfk.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}