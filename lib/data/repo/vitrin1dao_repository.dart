import 'package:karusel_calismasi/data/entity/vitrin1_model.dart';
//dao: DatabaseAccessObject
class Vitrin1DaoRepository {

  Future<List<Vitrin1Model>> vitrin1DaodanYukle() async {
    var v1 = Vitrin1Model(id: 1, ad: "Resim1", resim: "photo-1599844127201-f01a996b358c?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=zoran-zonde-stojanovski-Dw-oxX8ZM44-unsplash.jpg&w=640");
    var v2 = Vitrin1Model(id: 2, ad: "Resim2", resim: "photo-1596325847894-5c74ddd34857?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-rHeZKDr8FBQ-unsplash.jpg&w=640");
    var v3 = Vitrin1Model(id: 3, ad: "Resim3", resim: "photo-1518553552028-b1ba6f77cf98?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=rafael-alcure-Fzip3zb-h9k-unsplash.jpg&w=640");
    var v4 = Vitrin1Model(id: 4, ad: "Resim4", resim: "photo-1596325426091-d11002d625fa?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-dTIFWJKNglE-unsplash.jpg&w=640");
    var v5 = Vitrin1Model(id: 4, ad: "Resim4", resim: "photo-1536685965216-c5f4478ec2cf?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=vladimir-fedotov-i8vqYZbKo8M-unsplash.jpg&w=640");
    var v6 = Vitrin1Model(id: 4, ad: "Resim4", resim: "photo-1606152659143-aa3a4166d432?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=dushawn-jovic-wrPYQix_1E4-unsplash.jpg&w=640");
    var vitrin1ListesiRepo = <Vitrin1Model>[];
    vitrin1ListesiRepo.add(v1);
    vitrin1ListesiRepo.add(v2);
    vitrin1ListesiRepo.add(v3);
    vitrin1ListesiRepo.add(v4);
    vitrin1ListesiRepo.add(v5);
    vitrin1ListesiRepo.add(v6);
    return vitrin1ListesiRepo;
  }
}