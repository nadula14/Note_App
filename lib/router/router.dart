import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/pages/child_page.dart';
import 'package:note_app/pages/home_page.dart';
import 'package:note_app/pages/profile_page.dart';
import 'package:note_app/pages/user_page.dart';

class RouterClass {
  final router = GoRouter(
      initialLocation: "/profile",
      errorPageBuilder: (context, state) {
        return const MaterialPage<dynamic>(
          child: Scaffold(
            body: Center(child: Text("Page not found")),
          ),
        );
      },
      routes: [
        //Home Page
        GoRoute(
          name: "home",
          path: "/",
          builder: (context, state) {
            return const HomePage();
          },
        ),

        GoRoute(
            name: "profile",
            path: "/profile",
            builder: (context, state) {
              return const ProfilePage();
            },

            //nested routes
            routes: [
              GoRoute(
                name: "child",
                path: "child",
                builder: (context, state) {
                  return const ChildPage();
                },
              )
            ]),

        //user page extra parameter
        GoRoute(
          path: "/user",
          builder: (context, state) {
            final name =
                (state.extra as Map<String, dynamic>)
                ["name"] as String;

            final age = (state.extra as Map<String, dynamic>)
                ["age"] as int;
            return UserPage(
              userName: name,
              userAge: age,
            );
          },
        ),
      ]);
}
