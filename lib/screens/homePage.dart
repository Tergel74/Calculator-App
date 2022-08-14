import 'package:flutter/material.dart';
import 'package:calc_app/components/calcButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int normTextColor = 0xFFFFFFFFF;
  int cTextColor = 0xFFFFFFF600;
  int operationsTextColor = 0xFF301B3F;
  int normBgColor = 0xFF3C415C;
  int equalsBgColor = 0xFF301B3F;

  var layout = [
    ['C', '( )', '%', '÷'],
    ['7', '8', '9', 'x'],
    ['4', '5', '6', '-'],
    ['1', '2', '3', '+'],
    ['+/-', '0', '.', '=']
  ];

  var expr = '';
  var answer = '';

  btnPress() {}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: screenHeight * 0.3),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 10),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.backspace),
              color: Color(normBgColor),
              splashRadius: 15,
              splashColor: Color(normTextColor),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: 1.0,
            width: screenWidth * 0.8,
            color: const Color(0xFF3C415C),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
            Button(
                val: layout[0][0],
                textColor: cTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
              val: layout[0][1],
              textColor: operationsTextColor,
              bgcolor: normBgColor,
              function: btnPress(),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[0][2],
                textColor: operationsTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[0][3],
                textColor: operationsTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
          ],
        ),
        SizedBox(height: screenHeight * 0.015),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
            Button(
                val: layout[1][0],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[1][1],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[1][2],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[1][3],
                textColor: operationsTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
          ],
        ),
        SizedBox(height: screenHeight * 0.015),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
            Button(
                val: layout[2][0],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[2][1],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[2][2],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[2][3],
                textColor: operationsTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
          ],
        ),
        SizedBox(height: screenHeight * 0.015),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
            Button(
                val: layout[3][0],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[3][1],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[3][2],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[3][3],
                textColor: operationsTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
          ],
        ),
        SizedBox(height: screenHeight * 0.015),
        Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 10)),
            Button(
                val: layout[4][0],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[4][1],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[4][2],
                textColor: normTextColor,
                bgcolor: normBgColor,
                function: btnPress()),
            const Padding(padding: EdgeInsets.fromLTRB(0, 10, 25, 10)),
            Button(
                val: layout[4][3],
                textColor: normTextColor,
                bgcolor: equalsBgColor,
                function: btnPress()),
          ],
        )
      ],
    ));
  }
}
