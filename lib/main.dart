import 'package:flutter/material.dart';
import 'package:moragriegaruanoa02/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static int num = 0;
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PROYECTO 02',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            body: Center(
                child: Container(
          width: 430,
          height: 932,
          color: Color.fromRGBO(47, 47, 47, 1),
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 99, 29, 0),
                child: Text("CONTADOR",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 64,
                        fontWeight: FontWeight.w700)),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(156, 80, 156, 0),
                  child: Text("$num",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 200,
                          fontWeight: FontWeight.w200))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(15, 70, 15, 0),
                      child: ButtonDesign(text: "+")),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 70, 15, 0),
                      child: ButtonDesign(text: "RESET")),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 70, 15, 0),
                      child: ButtonDesign(text: "-"))
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Text(
                  "Name by student",
                  style: TextStyle(
                      color: Color.fromRGBO(172, 171, 171, 1),
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w200),
                ),
              )
            ],
          )),
        ))));
  }
}
