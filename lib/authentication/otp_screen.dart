import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/authentication/details_screen.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/widgets/custom_textfield.dart';
import 'package:zoltom/widgets/custom_widgets.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';
import 'package:zoltom/widgets/custom_buttons.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
                  bAppText("Got OTP,", 30, mc),
                  VGap(5),
                  bAppText("Let's Surf Zoltom", 25, mc),
                  VGap(60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PinBox(),
                      PinBox(),
                      PinBox(),
                      PinBox(),
                    ],
                  ),
                  VGap(15),
                  nAppText(
                      "*Insert OTP generated on the number, input the OTP to SignUp/login in zoltom",
                      13,
                      grey),
                ],
              ),
              PrimaryButton(context, () {
                goto(context, DetailsScreen());
              }, "Let's Go")
            ],
          ),
        ),
      ),
    );
  }

  Widget PinBox() {
    return Neumorphic(
      style: NeumStyle(),
      child: Container(
        width: 50,
        height: 52,
        child: TextField(
          // maxLength: 1,
          
          keyboardType: TextInputType.phone,
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          decoration: InputDecoration(

            border: InputBorder.none,
           
          ),
        ),
      ),
    );
  }
}
