// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Text(
//             "Profile Page",
//             style: TextStyle(
//               fontSize: 40,
//             ),
//           ),
//           const SizedBox(height: 15),
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).go("/");
//             },
//             child: const Text("Go to Home Page"),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).go("/profile/child");
//             },
//             child: const Text("Go to Child Page"),
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               GoRouter.of(context).go("/user", extra: {
//                 "name": "Nadula",
//                 "age" :  24,
//                });
//             },
//             child: const Text("Go to User Page"),
//           )
//         ],
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_app/router/route_names.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  // final TextEditingController _ageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    // _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
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
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 15),
              // SizedBox(
              //   width: 300,
              //   child: TextFormField(
              //     controller: _ageController,
              //     decoration: const InputDecoration(
              //       labelText: "Enter your age",
              //       border: OutlineInputBorder(),
              //     ),
              //     keyboardType: TextInputType.number,
              //     validator: (value) {
              //       if (value == null || value.isEmpty) {
              //         return "Age is required";
              //       }
              //       if (int.tryParse(value) == null) {
              //         return "Enter a valid number";
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {
                  //   GoRouter.of(context).go(
                  //     "/user",
                  //     extra: {
                  //       "name": _nameController.text,
                  //       //"age": int.parse(_ageController.text),
                  //     },
                  //   );
                  // }
                 String names = "Madmax";
                  GoRouter.of(context).go("/user/$names");
                },
                child: const Text("Go to User Page"),
              ),

              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).goNamed(RouterNamesClass.child);
                },
                child: const Text("Go to Child Page"),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go("/");
                },
                child: const Text("Go to Home Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
