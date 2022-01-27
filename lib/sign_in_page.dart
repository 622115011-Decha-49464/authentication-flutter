// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ),
      body: _buildContext(),
    );
  }
}

Widget _buildContext() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Text(
          "Sign in",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 0,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Go Anonymous"))
      ],
    ),
  );
}
