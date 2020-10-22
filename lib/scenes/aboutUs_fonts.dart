// Documetacao do flutter: https://flutter.dev/
// stackOerflow https://stackoverflow.com/
// transiao de paginas https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
//
//inspiracao visual
//
//https://www.freepik.com/premium-vector/collection-screens-smart-home-app_9707255.htm
//o fundo da tela de login (gradiente com canto arredondado) foi baseado em um video do youtube que perdi o link :/

//
//repositorios
//
//
//menu: https://github.com/PrateekSharma1712/custom_navigation_drawer

//-->navegaçao url_launcher: https://pub.dev/packages/url_launcher

import 'dart:async';
import 'dart:ui';

import '../colors.dart';
import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

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
                  margin: EdgeInsets.only(left: 30),
                  padding: EdgeInsets.only(top: 16, left: 50, right: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back),
                              tooltip: 'Voltar',
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Spacer(),
                            Text(
                              'Sobre nós',
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 66),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Fontes . Links',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Cor.azulTurqueza, fontSize: 45),
                              ),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 30, right: 20, top: 20),
                            height: 220,
                            child: Column(
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
                                        text: ' Documentação do Flutter',
                                        style: TextStyle(
                                            color: Cor.azulTurqueza,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            ' é muito boa, e contem muitos exemplos.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto'),
                                      ),
                                      TextSpan(
                                        text: '\n\nSlackOverflow ',
                                        style: TextStyle(
                                            color: Colors.orange[500],
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'sempre tem alguem que teve o mesmo problema!',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto'),
                                      ),
                                      TextSpan(
                                        text: '\n\nMedium ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            ' - Transiçao de telas (animação)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto'),
                                      ),
                                      TextSpan(
                                        text: '\n\nGitHub ',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: ' - Menu lateral',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto'),
                                      ),
                                      TextSpan(
                                        text: '\n\nPickFree ',
                                        style: TextStyle(
                                            color: Colors.blue[300],
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: ' - Inspiração do Layout',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 30, right: 20),
                              height: 300,
                              child: FontList()),
                          Container(
                            margin: EdgeInsets.only(left: 40, top: 20),
                            child: Column(
                              children: [
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

class FontList extends StatelessWidget {
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples

Widget _myListView2(BuildContext context) {
  return ListView(
    scrollDirection: Axis.vertical,
    children: <Widget>[
      ListTile(
        leading: Icon(
          Icons.wb_sunny,
          color: Cor.azulTurqueza,
        ),
        title: Text('Sun'),
        tileColor: Colors.white,
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Cor.azulTurqueza,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.brightness_3,
          color: Cor.azulTurqueza,
        ),
        title: Text('Moon'),
        tileColor: Colors.white,
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Cor.azulTurqueza,
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.star,
          color: Cor.azulTurqueza,
        ),
        title: Text(
          'Star',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        tileColor: Colors.white,
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Cor.azulTurqueza,
        ),
      ),
    ],
  );
}

Widget _myListView(BuildContext context) {
  var flutterIcon = '../../assets/images/flutter.png';
  var stackIcon = '../../assets/images/stackoverflow.png';
  var mediumIcon = '../../assets/images/medium.png';
  var githubIcon = '../../assets/images/github.png';
  var layoutP = '../../assets/images/layoutP.png';

  const String flitterDev = 'https://flutter.dev/';

  return ListView(
    scrollDirection: Axis.vertical,
    children: ListTile.divideTiles(
      color: Colors.white,
      context: context,
      tiles: [
        ListTile(
          leading: Stack(children: [
            Image(
              image: AssetImage(flutterIcon),
              alignment: Alignment.center,
              width: 30,
            ),
          ]),
          title: Text(
            'Flutter.dev',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Cor.azulTurqueza,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage(stackIcon),
            alignment: Alignment.center,
            width: 30,
          ),
          title: Text(
            'StackOverflow.com',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Cor.azulTurqueza,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage(mediumIcon),
            alignment: Alignment.center,
            width: 30,
          ),
          title: Text(
            'Medium',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Cor.azulTurqueza,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage(githubIcon),
            alignment: Alignment.center,
            width: 30,
          ),
          title: Text(
            'GitHub',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Cor.azulTurqueza,
          ),
        ),
        ListTile(
          leading: Image(
            image: AssetImage(layoutP),
            alignment: Alignment.center,
            width: 25,
          ),
          title: Text(
            'Layout',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Cor.azulTurqueza,
          ),
        ),
      ],
    ).toList(),
  );
}
// RaisedButton(
//   onPressed: () => setState(() {
//     _launched = _launchInBrowser(toLaunch);
//   }),
//   child: const Text('Launch in browser'),
// ),
// const Padding(padding: EdgeInsets.all(16.0)),
// FutureBuilder<void>(
//     future: _launched, builder: _launchStatus),
