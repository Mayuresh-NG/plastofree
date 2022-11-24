import 'package:flutter/material.dart';
import 'package:plastofree/constant/GlobalVariables.dart';

class DOD extends StatefulWidget {
  const DOD({Key? key}) : super(key: key);

  @override
  State<DOD> createState() => _DODState();
}

class _DODState extends State<DOD> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 7,
      shadowColor: Colors.yellowAccent,
      child: Container(
        height: 235,
        width: 380,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/n.png"),
            fit: BoxFit.fitHeight,
            alignment: Alignment.topLeft,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Deal of the day",style: TextStyle(
            color: globalvariables.secondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        ),
      ),
    );
  }
}
