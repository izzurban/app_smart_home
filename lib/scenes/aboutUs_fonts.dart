import 'dart:async';

import '../colors.dart';
import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsFonts extends StatefulWidget {
  @override
  _AboutUsFontsState createState() => _AboutUsFontsState();
}

class _AboutUsFontsState extends State<AboutUsFonts> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.cylog.org/headers/';

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
                            margin: EdgeInsets.only(left: 70),
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
                                                color: Colors.white,
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
                                      'Infelizmente por questão de tempo não foi possível chegar perto do resultado esperado, porêm dediquei bastante tempo ao layout e à estrutura, que acredito tenha tido um resultado interessante. Espero conseguir terminar esse projeto ainda neste semestre.',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Cor.azulTurqueza),
                                  onPressed: () {
                                    Navigator.pop(context);
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
                                RaisedButton(
                                  onPressed: () => setState(() {
                                    _launched = _launchInBrowser(toLaunch);
                                  }),
                                  child: const Text('Launch in browser'),
                                ),
                                const Padding(padding: EdgeInsets.all(16.0)),
                                FutureBuilder<void>(
                                    future: _launched, builder: _launchStatus),
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
