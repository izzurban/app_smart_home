import 'package:flutter/material.dart';
import '../../../scenes/aboutUs.dart';

import '../../../routes.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  CollapsingNavigationDrawerState createState() {
    return new CollapsingNavigationDrawerState();
  }
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 210;
  double minWidth = 70;
  bool isCollapsed = false;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 0));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
    setState(() {
      isCollapsed = true;
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: Cor.gradienteAzul,
        ),
        width: widthAnimation.value,
        child: Column(
          children: <Widget>[
            CollapsingListTile(
              title: 'Sobre nós',
              icon: Icons.person,
              animationController: _animationController,
              onTap: () {
                Navigator.push(context, FadeRoute(page: AboutUs()));
                var i = 0;
                for (; i < navigationItems.length; i++) {
                  navigationItems[i].currentSelected = false;
                }
              },
            ),
            Divider(
              color: Colors.transparent,
              height: 50,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 0.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                        Navigator.pushNamed(
                            context, navigationItems[counter].navigation);
                        var i = 0;
                        for (; i < navigationItems.length; i++) {
                          navigationItems[i].currentSelected = false;
                        }
                        navigationItems[counter].currentSelected = true;
                      });
                    },
                    isSelected:
                        navigationItems[counter].currentSelected ? true : false,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.forward()
                      : _animationController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: selectedColor,
                size: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
