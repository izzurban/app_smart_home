import 'package:app_smart_home/scenes/aboutUs_fonts.dart';
import 'package:app_smart_home/widgets/pageTransition.dart';

import '../colors.dart';
import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                gradient: Cor.gradienteEscuro,
              ),
              child: Container(
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
                            'Sobre nós',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sobre',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Cor.azulTurqueza, fontSize: 45),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 65, top: 20),
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'A',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: ' idéia inícial ',
                                            style: TextStyle(
                                                color: Cor.azulTurqueza,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                'era fazer o front de um app para automação residencial, incluindo cadastro de devices, locais (comodos), grupos e rotinas, e depois apresentar o status de todos os devices em um mapa da casa.',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Infelizmente por questão de tempo não foi possível chegar perto do resultado esperado, porêm dediquei bastante tempo ao layout e à estrutura, que acredito tenha tido um resultado interessante.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    Text(
                                      'Espero terminar esse projeto ainda neste semestre e depois partir para a API.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30),
                                ),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Cor.azulTurqueza),
                                      onPressed: () {
                                        Navigator.push(context,
                                            FadeRoute(page: AboutUsFonts()));
                                      },
                                      child: Center(
                                        child: Text(
                                          'Sobre o Código'.toUpperCase(),
                                          style: TextStyle(
                                            color: Cor.fonteEscura,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
