import 'package:flutter/material.dart';
import '../routes.dart';

class AboutUsTrouble extends StatelessWidget {
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
                  width: MediaQuery.of(context).size.width,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Desafios',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cor.azulTurqueza, fontSize: 45),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40, top: 20),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height - 350,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Primeiro app em flutter, descobrir qual widget usar em cada situação é o primeiro desafio, pois cada um aceita propriedades diferentes.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '\nParte do trabalho foi seguindo, adaptando e alterando alguns tutoriais e repositórios.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Text(
                                    '\nO menu lateral foi o que mais me tomou tempo, além da aparência mudei o comportamento, e adicionei a navegação, por ser ciado dinâmicamente a complexidade fica bem maior.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Text(
                                    '\nOutro ponto foi a transição de tela, a original achei bem desagradável. Mudei isso nas páginas cujo link não é criado dinamicamente, mas ainda não nos links dinamicos.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Cor.azulTurqueza),
                              onPressed: () {
                                Navigator.push(
                                    context, FadeRoute(page: AboutUsFonts()));
                              },
                              child: Center(
                                child: Text(
                                  'Fontes . Links'.toUpperCase(),
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
                  ))),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}
