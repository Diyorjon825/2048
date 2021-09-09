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
                child: HeadWidgets(),
              ),
              Expanded(
                flex: 6,
                child: MainWidget(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            child: Icon(Icons.arrow_left_outlined),
                            onPressed: () {
                              setState(() {
                                toLeft();
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: ElevatedButton(
                                    child: Icon(Icons.arrow_drop_up),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: ElevatedButton(
                                    child: Icon(Icons.arrow_drop_down),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: ElevatedButton(
                            child: Icon(Icons.arrow_right_outlined),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
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

class Cubs extends StatelessWidget {
  var stileForText = TextStyle(color: Colors.white, fontSize: 28);
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
        color: Colors.brown[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          number,
          style: stileForText,
        ),
      ),
    );
  }
}

//Begin HeadWidget

class HeadWidgets extends StatefulWidget {
  const HeadWidgets({
    Key? key,
  }) : super(key: key);

  @override
  _HeadWidgetsState createState() => _HeadWidgetsState();
}

class _HeadWidgetsState extends State<HeadWidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                          style: TextStyle(fontSize: 25, color: Colors.white),
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
                          style: TextStyle(fontSize: 25, color: Colors.white),
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
    );
  }
}
