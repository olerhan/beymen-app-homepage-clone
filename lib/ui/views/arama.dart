import 'package:flutter/material.dart';

class Arama extends StatefulWidget {
  const Arama({super.key});

  @override
  State<Arama> createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Arama",style: TextStyle(fontFamily: "TTNormsPro" ,fontSize: 30,color: Colors.black54),),);
  }
}


