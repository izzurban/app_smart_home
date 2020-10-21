import '../colors.dart';
import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: CollapsingNavigationDrawer(),
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
                    //margin: EdgeInsets.only(left: 70),
                    padding: EdgeInsets.only(top: 30, left: 50, right: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Adicionar',
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
                                'Adicionar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Cor.azulTurqueza, fontSize: 45),
                              ),
                            ],
                          ),
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
