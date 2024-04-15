import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:student_commute_admin/const.dart';
import 'package:student_commute_admin/controller/admin_controller.dart';
import 'package:student_commute_admin/view/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 45),
        height: size.height / 2,
        width: size.width / 2,
        decoration: const BoxDecoration(color: WHITE),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height,
              width: size.width * .23,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: WHITE),
              child: Column(
                children: [
                  CircleAvatar(),
                  Text(
                    "Student Commute",
                    style: GoogleFonts.poppins(
                        color: DEFAULT_BLUE_DARK,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height,
              width: size.width * .23,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Center(
                    child: Text(
                      'Welcome',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'Email',
                    style: GoogleFonts.poppins(),
                  ),
                  TextFormField(
                    // controller: loginController.loginEmailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Text(
                    'Password ',
                    style: GoogleFonts.poppins(),
                  ),
                  Consumer<AdminController>(
                      builder: (context, obsecureController, _) {
                    return TextFormField(
                      obscureText: obsecureController.isObsecure,
                      // controller: loginController.loginPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "*required field";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          isDense: true,
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                              onPressed: () {
                                obsecureController.changeObsecure();
                              },
                              icon: Icon(obsecureController.isObsecure
                                  ? Iconsax.eye
                                  : Iconsax.eye_slash))),
                    );
                  }),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'Remember me',
                        style: GoogleFonts.poppins(),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  SizedBox(
                    width: size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => Home()),
                            (route) => false);

                        // if (loginController.loginKey.currentState!.validate()) {
                        //   loginController.userLogin(
                        //     loginController.loginEmailController.text,
                        //     loginController.loginPasswordController.text,
                        //     context,
                        //   );
                        // }
                      },
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll<OutlinedBorder>(
                              ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)))),
                          minimumSize: MaterialStatePropertyAll<Size>(
                            Size.fromHeight(50),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(DEFAULT_BLUE_GREY)),
                      child: Text(
                        'Login Now',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
