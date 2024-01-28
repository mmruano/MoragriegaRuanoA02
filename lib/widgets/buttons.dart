import 'package:flutter/material.dart';
import 'package:moragriegaruanoa02/main.dart';

class ButtonDesign extends StatelessWidget {
  final String text;
  const ButtonDesign({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          switch (text) {
            case "+":
              MyApp.num += 1;
              break;
            case "RESET":
              MyApp.num = 0;
              break;
            case "-":
              MyApp.num -= 1;
          }

          print(MyApp.num);
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(27, 27, 27, 1)),
            fixedSize: MaterialStateProperty.all(Size(120, 51))),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400),
        ));
  }
}
