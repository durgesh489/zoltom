import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zoltom/authentication/addresss_access_screen.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/widgets/custom_textfield.dart';
import 'package:zoltom/widgets/custom_widgets.dart';
import 'package:zoltom/widgets/neumorphic_style.dart';
import 'package:zoltom/widgets/custom_buttons.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController dobController = TextEditingController();
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VGap(150),
                  bAppText("DETAILS,", 30, mc),
                  VGap(5),
                  bAppText("Tell Us About Yourself", 25, mc),
                  VGap(50),
                  Neumorphic(
                    style: NeumStyle(),
                    child: Container(
                      child: CustomTextField(
                        controller: nameController,
                        validators: [],
                        hintText: "Full Name*",
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                  VGap(45),
                  Neumorphic(
                    style: NeumStyle(),
                    child: Container(
                      child: CustomTextField(
                        controller: emailController,
                        validators: [],
                        hintText: "Email*",
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                  VGap(10),
                  nAppText("*Stay updated about offers and rewards", 12, grey),
                  VGap(35),
                  Neumorphic(
                    style: NeumStyle(),
                    child: Container(
                      child: CustomTextField(
                        controller: dobController,
                        validators: [],
                        hintText: "Date of Birth*",
                      ),
                    ),
                  ),
                  VGap(50),
                  PrimaryButton(context, () {
                    goto(context, AddressAccessScreen());
                  }, "Get Location")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
