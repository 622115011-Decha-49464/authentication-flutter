// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_element, unused_local_variable, unnecessary_string_interpolations, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> _signInAnonymously() async {
  try {
    final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    print('${userCredentials.user!.uid}');
  } catch (e) {
    print(e.toString());
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
      ),
      body: _buildContent(),
    );
  }
}

Widget _buildContent() {
  return Column(
    children: [
      Text(
        "Sign in",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 8,
      ),
      ElevatedButton(
          onPressed: () => _signInAnonymously(), child: Text("Go Anonymous"))
    ],
  );
}
