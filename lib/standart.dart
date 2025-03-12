import 'package:design_test/bottombar.dart';
import 'package:design_test/dashboard/dashboard.dart';
import 'package:design_test/filtersTab.dart';
import 'package:design_test/leftmenu.dart';
import 'package:design_test/providers/themeprovider.dart';
import 'package:design_test/providers/uiprovider.dart';
import 'package:design_test/topbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

class Standart extends StatelessWidget {
  const Standart({super.key});

  @override
  Widget build(BuildContext context) {
    final uiprovider = Provider.of<UiProvider>(context, listen: true);
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
                  color: theme['background1'],
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
                      uiprovider.getfiltersVisibility
                          ? SizedBox(
                              width: 20,
                            )
                          : SizedBox(),
                      uiprovider.getfiltersVisibility
                          ? Expanded(
                              flex: 1,
                              child: FiltersTab(),
                            )
                          // .animate().slideX(
                          //     begin: 1,
                          //     end: 0,
                          //     duration: 500.ms,
                          //     curve: Curves.fastEaseInToSlowEaseOut,
                          //   )
                          : SizedBox(),
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
