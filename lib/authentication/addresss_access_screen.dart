import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/authentication/otp_screen.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/main.dart';
import 'package:zoltom/screens/home_screen.dart';
import 'package:zoltom/screens/main_screen.dart';
import 'package:zoltom/widgets/custom_textfield.dart';
import 'package:zoltom/widgets/custom_widgets.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';
import 'package:zoltom/widgets/custom_buttons.dart';

class AddressAccessScreen extends StatelessWidget {
  const AddressAccessScreen({Key? key}) : super(key: key);

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
                  bAppText("Address,", 30, mc),
                  VGap(5),
                  bAppText("Provide Us Your Location", 25, mc),
                  VGap(15),
                  nAppText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                      13,
                      grey),
                  VGap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Neumorphic(
                          style: NeumStyle(),
                          child: SecondaryButton(() {
                            goto(context, MainScreen());
                          }, "Deny", white,black, fullWidth(context), 55),
                        ),
                      ),
                      HGap(30),
                      Expanded(
                        child: Neumorphic(
                            style: NeumStyle(),
                            child: SecondaryButton(() {
                              goto(context, MainScreen());
                            }, "Access", white,black, fullWidth(context), 55)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
