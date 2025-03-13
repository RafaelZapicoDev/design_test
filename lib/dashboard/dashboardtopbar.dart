import 'package:design_test/providers/themeprovider.dart';
import 'package:design_test/providers/uiprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardTopBar extends StatelessWidget {
  const DashboardTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeprovider, child) {
        Map<String, Color> theme = themeprovider.getTheme;

        return Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(right: 30, left: 30, top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 160,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.fromBorderSide(
                            BorderSide(color: theme['foreground2']!, width: 2),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.add_outlined,
                              size: 25,
                              color: theme['foreground2'],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Novo Item",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: theme['foreground2'],
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: theme['background3'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Resumo",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: theme['foreground3'],
                                  decoration: TextDecoration.none),
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: theme['background3'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Insights",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: theme['foreground3'],
                                  decoration: TextDecoration.none),
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: theme['foreground3'],
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                          color: theme['background3'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.search,
                                size: 27,
                                color: theme['foreground3'],
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Consumer<UiProvider>(
                        builder: (context, uiprovider, child) {
                          return GestureDetector(
                            onTap: () => uiprovider.toggleFilterVisibility(),
                            child: Icon(
                              uiprovider.getfiltersVisibility
                                  ? Icons.filter_alt_off
                                  : Icons.filter_alt,
                              size: 30,
                              color: theme['foreground3'],
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.refresh,
                        size: 30,
                        color: theme['foreground3'],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
