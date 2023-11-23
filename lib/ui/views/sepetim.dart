import 'package:flutter/material.dart';

class Sepetim extends StatefulWidget {
  const Sepetim({super.key});

  @override
  State<Sepetim> createState() => _SepetimState();
}

class _SepetimState extends State<Sepetim> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Sepetim",style: TextStyle(fontFamily: "TTNormsPro" ,fontSize: 30,color: Colors.black54),),);
  }
}


