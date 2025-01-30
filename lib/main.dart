import 'package:flutter/material.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/router/router.dart';
import 'package:note_app/widgets/inherited_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      userName: "Nadula",
      child: const MaterialApp(
        home: HomePage(),
      ) ,
    );
    // MaterialApp.router(
    //   routerConfig: RouterClass().router
    // );
  }
}
