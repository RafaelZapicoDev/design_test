import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: const Color.fromARGB(255, 82, 140, 226),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Text(
                "Hakuna Matata",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30),
              )),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Material(
                        color: Colors.transparent,
                        child: Switch(value: true, onChanged: null)),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Automação",
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
                      "Configurações",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.settings,
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
                      Icons.light_mode,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.accessibility_new,
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
                      Icons.person,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Colaborador",
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
