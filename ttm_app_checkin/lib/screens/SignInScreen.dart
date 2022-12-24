import 'package:flutter/material.dart';
import 'package:ttm_app_checkin/screens/HomeScreen.dart';
import 'package:ttm_app_checkin/ui/CustomElevetedButtonRounded.dart';

import '../ui/CustomTextFieldRounded.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/logo.png',
                width: 200,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: CustomTextFieldRounded(
                  hint: "เบอร์โทรศัพท์",
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: CustomElevatedButtonRounded(
                  text: 'ยืนยัน',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const HomeScreen()),
                    // );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
