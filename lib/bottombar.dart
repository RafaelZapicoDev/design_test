import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: const Color.fromARGB(255, 82, 140, 226),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Text(
                    "Amwal Smart Manager",
                    style: TextStyle(
                        color: Colors.white,
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
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Histórico",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: VerticalDivider(
                    color: const Color.fromARGB(209, 67, 132, 194),
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Calendário",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: VerticalDivider(
                    color: const Color.fromARGB(209, 67, 132, 194),
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.link,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.notifications_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: VerticalDivider(
                    color: const Color.fromARGB(209, 67, 132, 194),
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Nova Aba",
                      style: TextStyle(
                          color: Colors.white,
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
  }
}
