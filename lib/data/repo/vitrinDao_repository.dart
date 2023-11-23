import 'package:karusel_calismasi/data/entity/vitrin_model.dart';

class Vitrin1DaoRepository {
  Future<List<VitrinModel>> vitrin1DaodanYukle() async {
    var v1 = VitrinModel(id: 1, ad: "Vitrin 1 Resim 1", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin1resim1.webp");
    var v2 = VitrinModel(id: 2, ad: "Vitrin 1 Resim 2", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin1resim2.webp");
    var v3 = VitrinModel(id: 3, ad: "Vitrin 1 Resim 3", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin1resim3.webp");


    var vitrin1ListesiRepo = <VitrinModel>[];
    vitrin1ListesiRepo.add(v1);
    vitrin1ListesiRepo.add(v2);
    vitrin1ListesiRepo.add(v3);
    return vitrin1ListesiRepo;
  }
}

class Vitrin2DaoRepository {
  Future<List<VitrinModel>> vitrin2DaodanYukle() async {
    var v1 = VitrinModel(id: 4, ad: "Vitrin 2 Resim 1", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin2resim1.webp");
    var v2 = VitrinModel(id: 5, ad: "Vitrin 2 Resim 2", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin2resim2.webp");
    var v3 = VitrinModel(id: 6, ad: "Vitrin 2 Resim 3", resimUrl: "https://raw.githubusercontent.com/olerhan/beymen-app-homepage-clone/master/resimler/vitrin2resim3.webp");
    var vitrin2ListesiRepo = <VitrinModel>[];
    vitrin2ListesiRepo.add(v1);
    vitrin2ListesiRepo.add(v2);
    vitrin2ListesiRepo.add(v3);
    return vitrin2ListesiRepo;
  }
}