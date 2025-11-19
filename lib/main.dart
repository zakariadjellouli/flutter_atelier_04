import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
  double degre = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("atelier 04 - statefulwidget de zakaria"),
              Text("la valeur du compteur est $compteur"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur--;
                      });
                    },
                    icon: Icon(Icons.remove),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur = 0;
                      });
                    },
                    icon: Icon(Icons.refresh),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur++;
                      });
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              Text("merci de choisir le degre de rotation"),
              Slider(
                value: degre,
                min: 0,
                max: 360,
                onChanged: (value) {
                  setState(() {
                    degre = value;
                  });
                },
              ),
              Text("le degre choisi est ${degre.toStringAsFixed(0)}"),
            ],
          ),
        ),
      ),
    );
  }
}
