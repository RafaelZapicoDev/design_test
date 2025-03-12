import 'package:design_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: theme['main'],
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Text(
                        "Amwal Smart Manager",
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
                        Icon(
                          Icons.history,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Histórico",
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
                          "Calendário",
                          style: TextStyle(
                              color: theme['foreground1'],
                              decoration: TextDecoration.none,
                              fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.calendar_month,
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
                          Icons.link,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.notifications_rounded,
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
                          Icons.add,
                          color: theme['foreground1'],
                          size: 25,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Nova Aba",
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
