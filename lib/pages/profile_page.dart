import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/");
            },
            child: const Text("Go to Home Page"),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/profile/child");
            },
            child: const Text("Go to Child Page"),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/user", extra: {
                "name": "Nadula",
                "age" :  24,
               });
            },
            child: const Text("Go to User Page"),
          )
        ],
      )),
    );
  }
}
