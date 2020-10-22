import 'dart:ui';
import 'package:flutter/material.dart';
import '../routes.dart';

class AboutUs extends StatelessWidget {
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
                            height: MediaQuery.of(context).size.height - 350,
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
                                                fontSize: 16,
                                                fontFamily: 'Roboto'),
                                          ),
                                          TextSpan(
                                            text: ' idéia inícial ',
                                            style: TextStyle(
                                                color: Cor.azulTurqueza,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                'era fazer o front de um app para automação residencial, incluindo cadastro de devices, locais (comodos), grupos e rotinas automatizadas, e apresentar o status de todos os devices em um mapa da casa.',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Roboto'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '\nInfelizmente por questão de tempo não foi possível chegar perto do resultado esperado, porêm creio que atenda aos pré requesitos do trabalho. \nDediquei bastante tempo ao layout e à estrutura, e acredito que consegui um resultado interessante.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Roboto'),
                                    ),
                                    // Text(
                                    //   'Espero terminar esse projeto ainda neste semestre e depois partir para a API.',
                                    //   textAlign: TextAlign.start,
                                    //   style: TextStyle(
                                    //       color: Colors.white, fontSize: 16),
                                    // ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Thiago Nabruzzi',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 3,
                                                offset: Offset(0, 3),
                                              )
                                            ]),
                                        child: Stack(children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                            child: Container(
                                                alignment: Alignment.center,
                                                width: 80,
                                                height: 80,
                                                child: Image.asset(
                                                    'images/thiagoNabruzzi.jpg')),
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 65),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, bottom: 20),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Cor.azulTurqueza),
                                    onPressed: () {
                                      Navigator.push(context,
                                          FadeRoute(page: AboutUsTrouble()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'Desafios'.toUpperCase(),
                                        style: TextStyle(
                                          color: Cor.fonteEscura,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Cor.azulTurqueza),
                                    onPressed: () {
                                      Navigator.push(context,
                                          FadeRoute(page: AboutUsFonts()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'Fontes / Inspirações'.toUpperCase(),
                                        style: TextStyle(
                                          color: Cor.fonteEscura,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
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
