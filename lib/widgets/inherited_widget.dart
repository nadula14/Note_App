import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String userName; // inherited widget ekt ooni variable define krnw

  MyInheritedWidget({super.key, required super.child, required this.userName});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true; // inherited widget eke state eka wenas una gaman override karagnna oona
  }

 // inherited widget ek return krnw
  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}
