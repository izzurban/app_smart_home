import 'package:flutter/material.dart';
import 'package:app_smart_home/widgets/pageTransition.dart';
import 'package:flutter/services.dart';
import '../colors.dart';
import 'dart:ui';
import 'welcome.dart';

class TryLogin {
  final String user;
  final String password;

  TryLogin(this.user, this.password);
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var tryUser;
  var tryPassword;
  var foto = 'assets/images/smartHomeLogoBr.png';

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: Cor.gradienteEscuro,
            ),
            child: Column(children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    gradient: Cor.gradienteAzul,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(150))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Spacer(),
                    Stack(children: [
                      Image(
                        image: AssetImage(foto),
                        alignment: Alignment.center,
                        width: 180,
                      ),
                      ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                          child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 180,
                              child: Image.asset(foto)),
                        ),
                      )
                    ]),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 32,
                          bottom: 25,
                        ),
                        child: Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        padding: EdgeInsets.only(
                            top: 4, bottom: 4, right: 16, left: 16),
                        margin: EdgeInsets.only(top: 20, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            hintText: 'Usuário',
                          ),
                          onChanged: (value) {
                            tryUser = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        padding: EdgeInsets.only(
                            top: 4, bottom: 4, right: 16, left: 16),
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.grey,
                            ),
                            hintText: 'Senha',
                          ),
                          obscureText: true,
                          onChanged: (value) {
                            tryPassword = value;
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 90),
                        child: GestureDetector(
                          child: Text(
                            'Cadastre-se',
                            style: TextStyle(color: Colors.grey),
                          ),
                          onTap: () {
                            caixaDialogo(
                                'Em breve!',
                                'Para teste use:\nUsuário: admim\nSenha: 123',
                                'ok');
                          },
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 90),
                        child: GestureDetector(
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          onTap: () {
                            caixaDialogo('Em breve!',
                                'Use:\nUsuário: admim\nSenha: 123', 'Entendi!');
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(children: <Widget>[
                    Container(
                      padding:
                          const EdgeInsets.only(top: 50, left: 100, right: 100),
                      child: Column(
                        children: [
                          ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Cor.azulCeu),
                            onPressed: () {
                              if (tryUser == 'admin' && tryPassword == '123') {
                                Navigator.push(
                                    context, FadeRoute(page: Welcome()));
                              } else {
                                caixaDialogo(
                                    '', 'Usuário ou senha incorreta!', 'OK');
                              }
                            },
                            child: Center(
                              child: Text(
                                'Login'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ])
                ],
              ))
            ])));
  }

  caixaDialogo(title, msg, textButton) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title, style: TextStyle(fontSize: 12)),
            content: Text(msg, style: TextStyle(fontSize: 24)),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(textButton))
            ],
          );
        });
  }
}
