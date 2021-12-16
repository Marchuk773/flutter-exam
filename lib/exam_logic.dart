import 'dart:math';
import 'package:flutter/material.dart';
import 'package:exam/logic.dart';

class ListGenerator extends StatefulWidget {
  const ListGenerator({Key? key}) : super(key: key);
  @override
  _ListGeneratorState createState() => _ListGeneratorState();
}

class _ListGeneratorState extends State<ListGenerator> {
  _checkForValidity(int index) {}
  Logic logic = Logic();
  @override
  Widget build(BuildContext context) {
    var count = Random().nextInt(5) + 5;
    var components = [count];
    logic.generateNewSpecialElement(count);
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: count,
          itemBuilder: (context, position) {
            return Column(
              children: [
                InkWell(
                  child: Container(
                    color: Colors.grey,
                    width: 600,
                    height: 50,
                    child: Center(
                      child: Text("Element ${position}"),
                    ),
                  ),
                  onTap: () {
                    if (logic.checkRemainingElements(position)) {}
                  },
                ),
                Padding(padding: EdgeInsets.only(top: 30))
              ],
            );
          },
        ),
      ),
    );
  }
}
