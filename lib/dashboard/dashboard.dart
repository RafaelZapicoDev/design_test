import 'package:design_test/dashboard/dashboardtopbar.dart';
import 'package:design_test/providers/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.027),
                blurRadius: 50,
                spreadRadius: 0,
                offset: Offset(
                  0,
                  10,
                ),
              ),
            ],
            color: theme['background2'],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DashboardTopBar(),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
              //   child: Divider(
              //     color: theme['background 3'],
              //   ),
              // ),
              Expanded(
                flex: 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
