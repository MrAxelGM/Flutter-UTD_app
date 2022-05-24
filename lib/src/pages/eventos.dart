import 'package:flutter/material.dart';

// CARD, este esta bien asi como esta
class Eventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos Escolares (Noticias)'),
      ),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
          _cardTipo4(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      color: Color(0xFFB2FF59),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.notification_important, color: Colors.red),
            title: Text('Clases Virtuales!'),
            subtitle: Text(
                'En base a la situacion que hoy vivimos como sociedad hemos tomado la desicion de extender las clases virtuales hasta que se desarrolle una vacuna para que los alumnos puedan estar mas seguros dentro de las instalaciones.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Borrar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Entendido'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  return Card(
    color: Color(0xFFFFAB40),
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications, color: Colors.blue),
          title: Text('Feliz 11° Aniversario UTD'),
          subtitle: Text(
              'El día 7 de septiembre celebramos el 11 aniversario de la Universidad Tecnológica de Durango, un escuela que día a día se consolida como una de las mejores instituciones de educación superior de Durango, la cual ha ejercido una gloriosa labor de educar a los jóvenes de nuestra sociedad, no existe en este mundo un compromiso más importante y esencial para el desarrollo de nuestro país que la educación y la formación de los futuros ciudadanos, aquellos que recibiran la responsabilidad de hacer un mundo mejor.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Borrar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Entendido'),
              onPressed: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo3() {
  return Card(
    color: Color(0xFFFFAB40),
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications, color: Colors.blue),
          title: Text('Apoyo contra el cancer de mama'),
          subtitle: Text(
              'Los alumnos de 9B y 9C en la carrera de Licenciatura en Innovación de Negocios y  Mercadotecnia modalidad BIS crearon una práctica fotográfica con temática de concientización del cáncer de mama, como parte de la materia de fotografía publicitaria.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Borrar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Entendido'),
              onPressed: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo4() {
  return Card(
    color: Color(0xFFFFAB40),
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications, color: Colors.blue),
          title: Text('Beca -Manutencion-'),
          subtitle: Text(
              'En seguimiento a la Beca Federal para Apoyo a la Manutención 2020 - II, hemos encontrado que aún hay muchos aspirantes que no han realizado la carga de su CLABE interbancaria en el SUBES. Es importante señalar que el postulante que resulte seleccionado y no cuente con este dato no podrá ser elegible dentro del proceso, la fecha límite para este registro es el día de mañana 10 de noviembre de 2020.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Borrar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Entendido'),
              onPressed: () {},
            ),
          ],
        )
      ],
    ),
  );
}
