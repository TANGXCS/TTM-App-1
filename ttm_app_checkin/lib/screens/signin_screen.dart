import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      // ignore: avoid_unnecessary_containers
      body: Container(
        color: Colors.deepOrange[50],
        child: SafeArea(
          child: Column(
            children: [Text("Titles")],
          ),
        ),
      ),
    );
  }
}
