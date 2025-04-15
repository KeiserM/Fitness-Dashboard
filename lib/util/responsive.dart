import 'package:flutter/material.dart';

class Responsive {
  // para verifica se o tamano da tela representa a de Desktop , tbale ou mobile ,se for passa para true true
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
