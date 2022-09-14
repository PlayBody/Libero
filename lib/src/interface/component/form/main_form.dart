import 'package:libero/src/interface/connect/layout/connect_bottom.dart';
import 'package:libero/src/interface/connect/layout/connect_drawer.dart';
import 'package:libero/src/interface/connect/layout/header.dart';
import 'package:flutter/material.dart';

import '../../../common/globals.dart' as globals;

class MainForm extends StatelessWidget {
  final title;
  final bgColor;
  final Widget render;
  const MainForm(
      {required this.title, this.bgColor, required this.render, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    globals.connectHeaerTitle = title;
    return Scaffold(
      appBar: MyConnetAppBar(),
      body: render,
      backgroundColor: bgColor == null ? Colors.white : bgColor, //, //
      drawer: ConnectDrawer(),
      bottomNavigationBar: ConnectBottomBar(),
    );
  }
}
