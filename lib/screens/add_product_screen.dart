import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoltom/constants/colors.dart';
import 'package:zoltom/screens/add_product_step1.dart';
import 'package:zoltom/widgets/custom_buttons.dart';
import 'package:zoltom/widgets/custom_widgets.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    
                    children: [
                      BackButtonW(context,Icons.arrow_back ),
                      SizedBox(),
                    ],
                  ),
                  VGap(30),
                  // nAppText('To add a product and ', 32,mc),
                  // nAppText('earn reward', 32,mc),
                  Text('To add a product and earn reward',style: TextStyle(color:mc,fontSize:32),textAlign: TextAlign.center,),
                  VGap(15),
                  nAppText('Keep following things handy', 20,mc),
                  VGap(20),
                  ListTile(
                    leading: Icon(Icons.document_scanner,size: 50,),
                    horizontalTitleGap: 35,
                    title: Text('Product Image',style: ntextStyle(20, mc!),),
                  ),
                  VGap(18),
                  Divider(thickness: 1,),
                  VGap(18),
                  ListTile(
                    leading: Icon(Icons.document_scanner,size: 50,),
                    horizontalTitleGap: 35,
                    title: Text('Invoice',style: ntextStyle(20, mc!),),
                  ),
                  VGap(18),
                  Divider(thickness: 1,),
                  VGap(18),
                  ListTile(
                    leading: Icon(Icons.document_scanner,size: 50,),
                    horizontalTitleGap: 35,
                    title: Text(' Any additional document(if any)',style: ntextStyle(20, mc!),),
                  ),
                  VGap(18),
                  Divider(thickness: 1,),
                  VGap(18),
                  ListTile(
                    leading: Icon(Icons.document_scanner,size: 50,),
                    horizontalTitleGap: 35,
                    title: Text('Insurance (if any)',style: ntextStyle(20, mc!),),
                  ),
                  VGap(60),
                  PrimaryButton(context,() {
                      goto(context, AddProductStep1());
                    } , 
                    "Let's get started"
                  ),
                  VGap(30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}