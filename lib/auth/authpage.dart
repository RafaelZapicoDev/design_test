import 'package:design_test/auth/signinform.dart';
import 'package:design_test/auth/signupform.dart';
import 'package:design_test/providers/uiprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UiProvider>(
      builder: (BuildContext context, uiprovider, Widget? child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("wall.jpg"),
                        fit: BoxFit.cover,
                      ),
                      // borderRadius: BorderRadius.only(
                      //     // topLeft: Radius.circular(20),
                      //     // bottomLeft: Radius.circular(20),
                      //     ),
                    ),
                  ),
                ),
                uiprovider.getsigninsignup ? Signinform() : Signupform()
              ],
            ),
          ),
        );
      },
    );
  }
}
