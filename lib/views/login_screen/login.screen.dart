import 'package:flutter/material.dart';
import 'package:freal_flutter/utils/utils.dart';
import 'package:freal_flutter/views/login_screen/getx/login.controller.dart';
import 'package:freal_flutter/views/base.screen.dart';
import 'package:freal_flutter/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends BaseScreen<LoginController> {
  const LoginScreen({super.key});

  @override
  Color? get screenBackgroundColor => const Color(0xff1D3132);

  @override
  Widget buildScreen(BuildContext context) {
    // TODO: implement buildScreen
    throw SizedBox(
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
                      const Color(0xff1D3133).withOpacity(0.1),
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
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Login".text.xl4.color(Colors.white).bold.make(),
                      UiSpacer.vSpace(),
                      const CustomTextField(
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                        hintText: "nevel@gmail.com",
                      ),
                      UiSpacer.vSpace(),
                      CustomTextField(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        hintText: "*******",
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: "Forgot".text.make(),
                        ),
                      ),
                      UiSpacer.vSpace(),
                      HStack(
                        [
                          CustomButton(
                            width: MediaQuery.of(context).size.width * 0.7,
                            onTap: () {},
                            backgroundColor: const Color(0xffD6A367),
                            label: "Login"
                                .text
                                .color(const Color(0xff244442))
                                .bold
                                .makeCentered(),
                          ),
                          UiSpacer.space(),
                          CustomButton(
                            onTap: () {},
                            width: MediaQuery.of(context).size.height * 0.06,
                            height: MediaQuery.of(context).size.height * 0.06,
                            backgroundColor: const Color(0xff244442),
                            boxBorder: Border.all(
                              width: 0.5,
                              color: const Color(0xffD6A367).withOpacity(0.5),
                            ),
                            label: const Icon(
                              Icons.center_focus_weak_outlined,
                              color: Color(0xffD6A367),
                            ),
                          ),
                        ],
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
                        "New User? ".text.color(Colors.white).make(),
                        GestureDetector(
                          child: "Register Here"
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
    );
  }
}
