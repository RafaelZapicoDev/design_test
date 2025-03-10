import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 30, left: 30, top: 15),
              decoration: BoxDecoration(
                color: Colors.white,
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
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.fromBorderSide(
                                BorderSide(
                                    color: const Color.fromARGB(
                                        255, 134, 170, 224),
                                    width: 2),
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
                                  color:
                                      const Color.fromARGB(255, 114, 152, 207),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Novo Item",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          255, 114, 152, 207),
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
                              color: const Color.fromARGB(255, 226, 233, 238),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Resumo",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          157, 97, 121, 136),
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
                              color: const Color.fromARGB(255, 226, 233, 238),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Insights",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: const Color.fromARGB(
                                          157, 112, 137, 153),
                                      decoration: TextDecoration.none),
                                )),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.settings,
                            color: const Color.fromARGB(157, 112, 137, 153),
                            size: 35,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 300,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 226, 233, 238),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: const Color.fromARGB(
                                          157, 112, 137, 153),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.filter_alt,
                              size: 35,
                              color: const Color.fromARGB(157, 112, 137, 153),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.refresh,
                              size: 35,
                              color: const Color.fromARGB(157, 112, 137, 153),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Divider(),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
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
  }
}
