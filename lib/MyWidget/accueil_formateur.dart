import 'package:flutter/material.dart';
import 'class.dart';

class ContenuAccueilFormateur extends StatefulWidget {
  const ContenuAccueilFormateur({super.key});

  @override
  State<ContenuAccueilFormateur> createState() =>
      _ContenuAccueilFormateurState();
}

class _ContenuAccueilFormateurState extends State<ContenuAccueilFormateur> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color(0xFF0EA5E9),
            child: Stack(
              children: [
                Row(
                  children: [
                    Column(children: [Text("Bonjour,"), Text("Nana Fourera")]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
