import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_commute_admin/const.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
          height: size.height / 2,
          width: size.width / 2,
          decoration: BoxDecoration(color: WHITE),
          child: Row(
            children: [
              SvgPicture.asset("assets/bus.svg"),
              // Container(
              //   height: size.height,
              //   width: size.width * .23,
              //   color: Colors.lightBlue,

              // )
            ],
          ),
        ),
      ),
    );
  }
}
