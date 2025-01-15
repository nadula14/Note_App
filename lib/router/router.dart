import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/profile_page.dart';

class RouterClass {
  final router = GoRouter(
    
    initialLocation:"/profile" ,
    
    routes: [
    //Home Page
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomePage();
      },
    ),

    GoRoute(
      path: "/profile",
      builder: (context, state) {
        return const ProfilePage();
      },
    ),
  ]);
}
