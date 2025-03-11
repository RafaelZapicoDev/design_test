import 'package:design_test/providers/themeprovider.dart';
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
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.fromBorderSide(
                            BorderSide(color: theme['main2']!, width: 2),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_outlined,
                              size: 30,
                              color: theme['main2'],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Novo Item",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: theme['main2'],
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
                        height: 40,
                        decoration: BoxDecoration(
                          color: theme['grey2'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Resumo",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: theme['grey1'],
                                  decoration: TextDecoration.none),
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          color: theme['grey2'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Insights",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: theme['grey1'],
                                  decoration: TextDecoration.none),
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: theme['grey1'],
                        size: 35,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          color: theme['grey2'],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.search,
                                size: 30,
                                color: theme['grey1'],
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.filter_alt,
                        size: 35,
                        color: theme['grey1'],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.refresh,
                        size: 35,
                        color: theme['grey1'],
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
