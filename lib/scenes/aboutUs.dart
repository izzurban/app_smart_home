import 'dart:async';

import '../colors.dart';
import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/menu/custom_navigation_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                              'Sobre nós',
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sobre nós',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Cor.azulTurqueza, fontSize: 45),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 80),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Links úteis:',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'texto texto texto texto texto texto texto texto texto texto texto texto texto texto texto ',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        RaisedButton(
                                          onPressed: () => setState(() {
                                            _launched =
                                                _launchInBrowser(toLaunch);
                                          }),
                                          child:
                                              const Text('Launch in browser'),
                                        ),
                                        const Padding(
                                            padding: EdgeInsets.all(16.0)),
                                        FutureBuilder<void>(
                                            future: _launched,
                                            builder: _launchStatus),
                                      ],
                                    ),
                                  ],
                                ),
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

_launchURL() async {
  const url = 'http://fatec.sp.gov.br';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
