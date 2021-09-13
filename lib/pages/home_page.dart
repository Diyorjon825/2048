import 'package:flutter/material.dart';
import 'package:flutter_2048/pages/logic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow[700],
                        ),
                        margin: EdgeInsets.all(5),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '2048',
                            style: TextStyle(fontSize: 38, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black87,
                                ),
                                margin: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Score\n 100',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange[800],
                                ),
                                margin: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        matrix = [
                                          [0, 0, 0, 0],
                                          [0, 0, 4, 0],
                                          [2, 0, 0, 0],
                                          [0, 0, 0, 0]
                                        ];
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black87,
                                ),
                                margin: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Score\n 100',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange[800],
                                ),
                                margin: EdgeInsets.all(5),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    child: Text(
                                      'UNDO',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 6,
                child: GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details) {
                    if (details.primaryVelocity! > 0) {
                      // User swiped Left
                      setState(() {
                        toRight();
                      });
                    } else if (details.primaryVelocity! < 0) {
                      setState(() {
                        toLeft();
                      });
                      // User swiped Right
                    }
                  },
                  onVerticalDragEnd: (DragEndDetails details) {
                    if (details.primaryVelocity! > 0) {
                      // User swiped Left
                      setState(() {
                        toDown();
                      });
                    } else if (details.primaryVelocity! < 0) {
                      setState(() {
                        toUp();
                      });
                      // User swiped Right
                    }
                  },
                  child: MainWidget(),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              // Expanded(
              //   flex: 2,
              //   child: Container(
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.stretch,
              //       children: [
              //         Expanded(
              //           child: Container(
              //             padding: EdgeInsets.all(5),
              //             child: ElevatedButton(
              //               child: Icon(Icons.arrow_left_outlined),
              //               onPressed: () {
              //                 setState(() {
              //                   toLeft();
              //                 });
              //               },
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: Container(
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.stretch,
              //               children: [
              //                 Expanded(
              //                   child: Container(
              //                     padding: EdgeInsets.all(5),
              //                     child: ElevatedButton(
              //                       child: Icon(Icons.arrow_drop_up),
              //                       onPressed: () {
              //                         setState(() {
              //                           toUp();
              //                         });
              //                       },
              //                     ),
              //                   ),
              //                 ),
              //                 Expanded(
              //                   child: Container(
              //                     padding: EdgeInsets.all(5),
              //                     child: ElevatedButton(
              //                       child: Icon(Icons.arrow_drop_down),
              //                       onPressed: () {
              //                         setState(() {
              //                           toDown();
              //                         });
              //                       },
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         Expanded(
              //           child: Container(
              //             padding: EdgeInsets.all(5),
              //             child: ElevatedButton(
              //               child: Icon(Icons.arrow_right_outlined),
              //               onPressed: () {
              //                 setState(() {
              //                   toRight();
              //                 });
              //               },
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

//Begin MainWidget

class MainWidget extends StatefulWidget {
  const MainWidget({
    Key? key,
  }) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cubs(i: 0)),
          Expanded(child: Cubs(i: 1)),
          Expanded(child: Cubs(i: 2)),
          Expanded(child: Cubs(i: 3)),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Cubs extends StatelessWidget {
  int i;
  Cubs({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: CubsWidget(0)),
          Expanded(child: CubsWidget(1)),
          Expanded(child: CubsWidget(2)),
          Expanded(child: CubsWidget(3)),
        ],
      ),
    );
  }

//har bitta kubchani qaytaradigan funikiya

  // ignore: non_constant_identifier_names
  Widget CubsWidget(int j) {
    String number;
    if (matrix[i][j] != 0) {
      number = matrix[i][j].toString();
    } else {
      number = '';
    }
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: getColor(j),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(
            color: matrix[i][j] == 2 || matrix[i][j] == 4
                ? Colors.black
                : Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }

  getColor(int j) {
    switch (matrix[i][j]) {
      case 2:
        return Colors.amber[300];
      case 4:
        return Colors.amber[600];
      case 8:
        return Colors.orange;
      case 16:
        return Colors.orange[800];
      case 32:
        return Colors.orange[900];
      case 64:
        return Colors.red;
      case 128:
        return Colors.red[700];
      case 256:
        return Colors.red[900];
      case 512:
        return Colors.deepOrangeAccent;
      case 1024:
        return Colors.deepOrangeAccent[400];
      case 2048:
        return Colors.deepOrange;
      case 4096:
        return Colors.deepOrange[700];
      case 8192:
        return Colors.deepOrange[900];
      default:
        return Colors.brown[300];
    }
  }
}
