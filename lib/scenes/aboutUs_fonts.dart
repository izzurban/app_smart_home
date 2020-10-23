// Documetacao do flutter: https://flutter.dev/
// stackOerflow https://stackoverflow.com/
// transiao de paginas https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
//
//inspiracao visual
//https://www.freepik.com/premium-vector/collection-screens-smart-home-app_9707255.htm
//o fundo da tela de login (gradiente com canto arredondado) foi baseado em um video do youtube que perdi o link :/
//
//repositorios
//menu: https://github.com/PrateekSharma1712/custom_navigation_drawer
//-->link externo  url_launcher: https://pub.dev/packages/url_launcher

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../routes.dart';

class AboutUsFonts extends StatefulWidget {
  @override
  _AboutUsFontsState createState() => _AboutUsFontsState();
}

class _AboutUsFontsState extends State<AboutUsFonts> {
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
                            height: MediaQuery.of(context).size.height - 375,
                            margin:
                                EdgeInsets.only(left: 40, top: 20, bottom: 5),
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
                                        text: '\n\nSlackOverflow ',
                                        style: TextStyle(
                                            color: Colors.orange[500],
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text:
                                            'sempre tem alguém com o mesmo problema!',
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
                                Container(
                                    margin: EdgeInsets.only(
                                        left: 30, right: 20, top: 20),
                                    height: 300,
                                    child: FontList()),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 65, right: 30, top: 20),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Cor.azulTurqueza),
                                  onPressed: () {
                                    Navigator.pop(context);
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Cor.azulTurqueza),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Center(
                                      child: Text(
                                        'Sobre'.toUpperCase(),
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

class FontList extends StatelessWidget {
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

var url = '';

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget _myListView(BuildContext context) {
  var flutterIcon = '../../assets/images/flutter.png';
  var stackIcon = '../../assets/images/stackoverflow.png';
  var mediumIcon = '../../assets/images/medium.png';
  var githubIcon = '../../assets/images/github.png';
  var layoutP = '../../assets/images/layoutP.png';

  var linkFlutter = 'https://flutter.dev/';
  var linkStack = 'https://stackoverflow.com/';
  var linkMedium =
      'https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823';
  var linkGithub =
      'https://github.com/PrateekSharma1712/custom_navigation_drawer';
  var linkLayout =
      'https://www.freepik.com/premium-vector/collection-screens-smart-home-app_9707255.htm';

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
            onTap: () {
              _launchURL(linkFlutter);
            }),
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
            onTap: () {
              _launchURL(linkMedium);
            }),
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
            onTap: () {
              _launchURL(linkStack);
            }),
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
            onTap: () {
              _launchURL(linkGithub);
            }),
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
            onTap: () {
              _launchURL(linkLayout);
            }),
      ],
    ).toList(),
  );
}
