import 'package:flutter/material.dart';

class Kategoriler extends StatefulWidget {
  const Kategoriler({super.key});

  @override
  State<Kategoriler> createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Kategoriler",style: TextStyle(fontFamily: "TTNormsPro" ,fontSize: 30,color: Colors.black54),),);
  }
}


