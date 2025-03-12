import 'package:design_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder:
          (BuildContext context, ThemeProvider themeProvider, Widget? child) {
        Map<String, Color> theme = themeProvider.getTheme;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: theme['main'],
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Icon(
                        Icons.spa,
                        color: theme['foreground1'],
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "ASM",
                        style: TextStyle(
                            color: theme['foreground1'],
                            decoration: TextDecoration.none,
                            fontSize: 30),
                      ),
                    ],
                  )),
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Insights",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.insights_rounded,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: VerticalDivider(
                        color: theme['foreground4'],
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Amwal Store",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.shopping_cart_rounded,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: VerticalDivider(
                        color: theme['foreground4'],
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Material(
                            color: Colors.transparent,
                            child: Switch(value: true, onChanged: null)),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Automação",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: VerticalDivider(
                        color: theme['foreground4'],
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Configurações",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.settings,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: VerticalDivider(
                        color: theme['foreground4'],
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: themeProvider.toggleTheme,
                            child: Icon(
                              themeProvider.getIsDarkTheme
                                  ? Icons.dark_mode_outlined
                                  : Icons.light_mode,
                              color: theme['foreground1'],
                              size: 25,
                            )
                            // .animate(
                            //     target: themeProvider.getIsDarkTheme ? 1 : 0)
                            // .rotate(
                            //     delay: 100.ms,
                            //     curve: Curves.fastOutSlowIn,
                            //     duration: 1000.ms),
                            ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.accessibility_new,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: VerticalDivider(
                        color: theme['foreground4'],
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Melodie",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
