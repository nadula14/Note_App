import 'package:flutter/material.dart';
import 'package:note_app/widgets/inherited_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //get the username from inherited widget
    String userName = MyInheritedWidget.of(context).userName;

    return Scaffold(
      body: Center(child: Text("userName : $userName")),
    );
  }
}
