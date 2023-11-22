import 'package:flutter/material.dart';

class Utility {

  static List<double> hesaplaEkranGenisligi (BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);//context gerekiyor o nedenle her sayfada ayrı hesaplanması lazım
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double eGenK = ekranGenisligi / 411.42857142857144;
    print("Ekran Genişliği: $ekranGenisligi Ekran Yüksekliği: $ekranYuksekligi");
    print("Genişlik Katsayısı: $eGenK");
    return [eGenK,ekranGenisligi];
  }

}
