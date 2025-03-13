import 'package:design_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 300, vertical: 80),
            decoration: BoxDecoration(color: theme['background1']),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: theme['background2'],
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(136, 165, 191, 0.48),
                        blurRadius: 16,
                        spreadRadius: 0,
                        offset: Offset(
                          6,
                          2,
                        ),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(136, 165, 191, 0.48),
                        blurRadius: 16,
                        spreadRadius: 0,
                        offset: Offset(
                          -6,
                          -2,
                        ),
                      ),
                    ]),
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
                    Expanded(
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 40),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 250,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        child: Image.asset('/ASM.gif'),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  decoration:
                                                      TextDecoration.none),
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
                                                  decoration:
                                                      TextDecoration.none),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 400,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: theme['foreground2'],
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 400,
                                      height: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: theme['background1']),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 400,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Password",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: theme['foreground2'],
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 400,
                                      height: 50,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: theme['background1']),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border:
                                                        Border.fromBorderSide(
                                                      BorderSide(
                                                          color: theme[
                                                              'foreground3']!),
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
                                                      color:
                                                          theme['foreground3'],
                                                      decoration:
                                                          TextDecoration.none),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            "Forgot Password?",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: theme['foreground3'],
                                                decoration:
                                                    TextDecoration.none),
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
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: theme['background']),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("or continue with",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color:
                                                          theme['background2'],
                                                      fontSize: 20))
                                            ],
                                          ),
                                        ),
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
                                      Text(
                                        "Sign up",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: theme['main'],
                                            decoration: TextDecoration.none),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
