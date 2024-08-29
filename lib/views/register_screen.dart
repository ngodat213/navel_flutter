import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/utils.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D3132),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/thumnail.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff1D3133).withOpacity(0.1),
                        const Color(0xff1D3133).withOpacity(0.05),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                        const Color(0xff1D3133),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Register".text.xl4.color(Colors.white).bold.make(),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Full Name",
                        ),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email ID",
                        ),
                        UiSpacer.vSpace(),
                        const CustomTextField(
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: "Password",
                        ),
                        UiSpacer.vSpace(),
                        CustomButton(
                          onTap: () {},
                          backgroundColor: const Color(0xffD6A367),
                          label: "Register"
                              .text
                              .color(const Color(0xff244442))
                              .bold
                              .makeCentered(),
                        ),
                        UiSpacer.vSpace(),
                        "Or Login With"
                            .text
                            .color(const Color(0xffD6A367))
                            .makeCentered(),
                        UiSpacer.vSpace(),
                        HStack(
                          [
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: const Color(0xff244442),
                              label: const Icon(
                                Icons.apple,
                                color: Color(0xffD6A367),
                              ),
                            ),
                            UiSpacer.space(),
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: const Color(0xff244442),
                              label: const Icon(
                                Icons.facebook,
                                color: Color(0xffD6A367),
                              ),
                            ),
                            UiSpacer.space(),
                            CustomButton(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.06,
                              onTap: () {},
                              backgroundColor: const Color(0xff244442),
                              label: const Icon(
                                Icons.facebook,
                                color: Color(0xffD6A367),
                              ),
                            ),
                          ],
                        ),
                        UiSpacer.space(),
                        HStack([
                          "Already have an account? "
                              .text
                              .color(Colors.white)
                              .make(),
                          GestureDetector(
                            child: "Login"
                                .text
                                .color(const Color(0xffD6A367))
                                .bold
                                .make(),
                          )
                        ]).centered()
                      ],
                    ).paddingAll(25),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
