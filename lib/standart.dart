import 'package:design_test/bottombar.dart';
import 'package:design_test/dashboard/dashboard.dart';
import 'package:design_test/filtersTab.dart';
import 'package:design_test/leftmenu.dart';
import 'package:design_test/providers/themeprovider.dart';
import 'package:design_test/topbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Standart extends StatelessWidget {
  const Standart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themeprovider, Widget? child) {
        Map<String, Color> theme = themeprovider.getTheme;
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
                child: TopBar(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.875,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: theme['background'],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: LeftMenu(),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(flex: 5, child: Dashboard()),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(flex: 1, child: FiltersTab()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.050,
                child: BottomBar(),
              ),
            ],
          ),
        );
      },
    );
  }
}
