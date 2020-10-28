import 'package:flutter/material.dart';

import '../routes.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                gradient: Cor.gradienteEscuro,
              ),
              child: Column(children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width, // - 70,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.only(top: 30, left: 50, right: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Welcome',
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Welcome',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Cor.azulTurqueza, fontSize: 45),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 270,
                          margin: EdgeInsets.only(
                              left: 70, top: 40, right: 20, bottom: 5),
                          child: RoomsList(),
                        ),
                      ],
                    ))
              ])),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}

class RoomsList extends StatelessWidget {
  Widget build(BuildContext context) {
    return _roomListView(context);
  }
}

Widget _roomListView(BuildContext context) {
  final titles = [
    'Sala Estar',
    'Sala Jantar',
    'Cozinha',
    'Quarto 1',
    'Quarto 2',
    'Quarto Casal',
  ];

  final icons = [
    Icons.weekend,
    Icons.directions_boat,
    Icons.kitchen,
    Icons.sports_football,
    Icons.child_friendly,
    Icons.king_bed,
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemExtent: 80,
    itemBuilder: (context, index) => Container(
      padding: EdgeInsets.all(8.0),
      child: Material(
        elevation: 4.0,
        shadowColor: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        color: Cor.bgEsc2,
        child: ListTile(
          contentPadding: EdgeInsets.only(top: 3, bottom: 3, left: 0, right: 8),
          tileColor: Cor.bgEsc1,
          leading: Container(
            width: 55,
            margin: EdgeInsets.only(right: 8.0, left: 8),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Cor.azulTurqueza,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Row(
              children: <Widget>[
                Icon(
                  icons[index],
                  color: Cor.bgEsc1,
                  size: 38.0,
                ),
              ],
            ),
          ),
          title: Text(
            titles[index],
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
