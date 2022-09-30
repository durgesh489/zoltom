import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/authentication/otp_screen.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/widgets/custom_textfield.dart';
import 'package:zoltom/widgets/custom_widgets.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';
import 'package:zoltom/widgets/custom_buttons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bAppText("Hey,", 30, mc),
                  VGap(5),
                  bAppText("SignUP Now", 30, mc),
                  VGap(60),
                  Neumorphic(
                    style: NeumStyle(),
                    child: Container(
                      width: fullWidth(context),
                      height: 50,
                      child: CustomTextField(
                        controller: phoneController,
                        validators: [],
                        hintText: "Mobile No",
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ),
                  VGap(15),
                  nAppText(
                      "You will get an OTP on the number, input the OTP to SignUp/login in zoltom",
                      13,
                      grey),
                  VGap(50),
                  PrimaryButton(context, () {
                    goto(context, OTPScreen());
                  }, "Generate OTP")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
