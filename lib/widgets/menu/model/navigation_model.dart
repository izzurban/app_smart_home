import 'package:flutter/material.dart';
import '../../../presentation/my_icons_icons.dart';

class NavigationModel {
  String title;
  String navigation;
  IconData icon;
  Function onTap;
  bool currentSelected;
  NavigationModel(
      {this.title,
      this.icon,
      this.navigation,
      this.onTap,
      this.currentSelected});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
      title: "Home",
      icon: Icons.home,
      navigation: '/welcome',
      currentSelected: false),
  NavigationModel(
      title: "Dispositivos",
      icon: Icons.devices,
      navigation: '/devices',
      currentSelected: false),
  NavigationModel(
      title: "Rotinas",
      icon: Icons.update,
      navigation: '/routines',
      currentSelected: false),
  NavigationModel(
      title: "Grupos",
      icon: Icons.filter_3,
      navigation: '/groups',
      currentSelected: false),
  NavigationModel(
      title: "Adicionar",
      icon: Icons.add,
      navigation: '/add',
      currentSelected: false),
  NavigationModel(
      title: "Configuração",
      icon: Icons.settings,
      navigation: '/settings',
      currentSelected: false),
  NavigationModel(
      title: "Sair",
      icon: Icons.power_settings_new,
      navigation: '/login',
      currentSelected: false),
];
