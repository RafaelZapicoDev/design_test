import 'package:design_test/FiltersTab.dart';
import 'package:design_test/dashboard.dart';
import 'package:design_test/leftmenu.dart';
import 'package:design_test/topbar.dart';
import 'package:flutter/material.dart';

class Standart extends StatelessWidget {
  const Standart({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.075,
            child: TopBar(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.925,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: const Color.fromARGB(255, 229, 232, 243),
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
        ],
      ),
    );
  }
}
