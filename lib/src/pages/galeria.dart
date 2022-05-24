import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo4()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://scontent.fver1-1.fna.fbcdn.net/v/t1.0-9/117772077_3597923273575809_6541326746448012245_n.jpg?_nc_cat=110&ccb=2&_nc_sid=e3f864&_nc_ohc=4abnS09fOZgAX-bntjV&_nc_ht=scontent.fver1-1.fna&oh=15f343f969dc1517c7d4c5630cb0385e&oe=5FD57294'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 350),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Bienvenido a la galeria de la UTD'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'http://utd.edu.mx/2018/galeria/images/Laboratorio%20pesado%20II.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 350),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(image:
          //
          //
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Laboratorio Pesado II'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo3() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image:
                NetworkImage('http://utd.edu.mx/2018/galeria/images/labo.jpg'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 350),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(image:
          //
          //
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Laboratorio Pesado I'))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  Widget _cardTipo4() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://scontent.fver1-1.fna.fbcdn.net/v/t1.0-9/38904533_2100895196611965_973058753970569216_o.jpg?_nc_cat=110&ccb=2&_nc_sid=e3f864&_nc_ohc=h6xNpJk_yZoAX90hu1v&_nc_ht=scontent.fver1-1.fna&oh=9e82dd0ceb3c36297633ad670a4866f7&oe=5FD30485'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 350),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(image:
          //
          //
          Container(
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, -10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
