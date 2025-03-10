import 'package:flutter/material.dart';

class FiltersTab extends StatelessWidget {
  const FiltersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
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
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          )
        ],
      ),
    );
  }
}
