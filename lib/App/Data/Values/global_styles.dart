import 'package:flutter/material.dart';

class NoRouteFound extends StatelessWidget {
  const NoRouteFound({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: Container(child: Center(child: Text("No Route Found"))),
    );
  }
}