import 'package:design_test/providers/themeprovider.dart';
import 'package:design_test/providers/uiprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                uiprovider.getsigninsignup
                    ? _buildSignInScreen()
                    : _buildSignUpScreen()
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSignUpScreen() {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;

        return Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: theme['background2'],
              borderRadius: BorderRadius.only(),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            child: Image.asset('/ASM.gif'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                child: Text(
                                  "Amwal Smart",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: theme['foreground2'],
                                      decoration: TextDecoration.none),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                child: Text(
                                  "MANAGER",
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 1.5,
                                      color: theme['main'],
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Nickname",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: theme['foreground2'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['background1']),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: theme['foreground2'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['background1']),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: theme['foreground2'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['background1']),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.visibility_outlined,
                                  color: theme['foreground3'],
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['main']),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: theme['background2'],
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                height: 1,
                                color: theme['foreground3'],
                                endIndent: 15,
                              )),
                              Text("OR",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: theme['foreground3'],
                                      decoration: TextDecoration.none)),
                              Expanded(
                                child: Divider(
                                  height: 1,
                                  indent: 15,
                                  color: theme['foreground3'],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('google.svg')),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('bluesky.svg')),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('twitter.svg')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 17,
                                color: theme['foreground2'],
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Consumer<UiProvider>(
                            builder: (BuildContext context, uiprovider,
                                Widget? child) {
                              return GestureDetector(
                                onTap: uiprovider.togglesigninsignup,
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: theme['main'],
                                      decoration: TextDecoration.none),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ).animate().fadeIn(duration: 500.ms);
      },
    );
  }

  Widget _buildSignInScreen() {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;

        return Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: theme['background2'],
              borderRadius: BorderRadius.only(
                  // topRight: Radius.circular(20),
                  // bottomRight: Radius.circular(20),
                  ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            child: Image.asset('/ASM.gif'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                child: Text(
                                  "Amwal Smart",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: theme['foreground2'],
                                      decoration: TextDecoration.none),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 0),
                                child: Text(
                                  "MANAGER",
                                  style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 1.5,
                                      color: theme['main'],
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: theme['foreground2'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['background1']),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: theme['foreground2'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['background1']),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.visibility_outlined,
                                  color: theme['foreground3'],
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.fromBorderSide(
                                          BorderSide(
                                              color: theme['foreground3']!),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Remember me",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: theme['foreground3'],
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: theme['foreground3'],
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: theme['main']),
                            child: Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: theme['background2'],
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Divider(
                                height: 1,
                                color: theme['foreground3'],
                                endIndent: 15,
                              )),
                              Text("OR",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: theme['foreground3'],
                                      decoration: TextDecoration.none)),
                              Expanded(
                                child: Divider(
                                  height: 1,
                                  indent: 15,
                                  color: theme['foreground3'],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 400,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('google.svg')),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('bluesky.svg')),
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset('twitter.svg')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 17,
                                color: theme['foreground2'],
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Consumer<UiProvider>(
                            builder: (BuildContext context, uiprovider,
                                Widget? child) {
                              return GestureDetector(
                                onTap: uiprovider.togglesigninsignup,
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: theme['main'],
                                      decoration: TextDecoration.none),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ).animate().fadeIn(duration: 500.ms),
        );
      },
    );
  }
}
