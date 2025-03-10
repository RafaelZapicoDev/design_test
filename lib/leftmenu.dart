import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      ...List.generate(4, (index) {
        List<String> titulos = [
          'Personal',
          'Extratos',
          'Monetário',
          'Relatórios'
        ];
        return _buildMenuItem(titulos[index]);
      }),
      Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 50,
          child: Container(
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
              color: const Color.fromARGB(255, 82, 140, 226),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Icon(
                    Icons.auto_awesome,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Assistente",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "© Empresa X de Xícara . ",
            style: TextStyle(
                color: const Color.fromARGB(157, 97, 121, 136),
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ]);
  }

  Widget _buildMenuItem(String titulo) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 50,
        child: Container(
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
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  titulo,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 82, 140, 226),
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: const Color.fromARGB(255, 82, 140, 226),
                    size: 25,
                  ),
                )),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
