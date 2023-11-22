import 'package:karusel_calismasi/data/entity/vitrin_model.dart';

class Vitrin1DaoRepository {
  Future<List<VitrinModel>> vitrin1DaodanYukle() async {
    var v1 = VitrinModel(id: 1, ad: "Resim1", resimUrl: "https://images.unsplash.com/photo-1599844127201-f01a996b358c?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=zoran-zonde-stojanovski-Dw-oxX8ZM44-unsplash.jpg&w=640");
    var v2 = VitrinModel(id: 2, ad: "Resim2", resimUrl: "https://images.unsplash.com/photo-1596325847894-5c74ddd34857?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-rHeZKDr8FBQ-unsplash.jpg&w=640");
    var v3 = VitrinModel(id: 3, ad: "Resim3", resimUrl: "https://images.unsplash.com/photo-1518553552028-b1ba6f77cf98?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=rafael-alcure-Fzip3zb-h9k-unsplash.jpg&w=640");
    var v4 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1596325426091-d11002d625fa?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-dTIFWJKNglE-unsplash.jpg&w=640");
    var v5 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1536685965216-c5f4478ec2cf?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=vladimir-fedotov-i8vqYZbKo8M-unsplash.jpg&w=640");
    var v6 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1606152659143-aa3a4166d432?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=dushawn-jovic-wrPYQix_1E4-unsplash.jpg&w=640");
    var vitrin1ListesiRepo = <VitrinModel>[];
    vitrin1ListesiRepo.add(v1);
    vitrin1ListesiRepo.add(v2);
    vitrin1ListesiRepo.add(v3);
    vitrin1ListesiRepo.add(v4);
    vitrin1ListesiRepo.add(v5);
    vitrin1ListesiRepo.add(v6);
    return vitrin1ListesiRepo;
  }
}

class Vitrin2DaoRepository {
  Future<List<VitrinModel>> vitrin2DaodanYukle() async {
    var v1 = VitrinModel(id: 1, ad: "Resim1", resimUrl: "https://images.unsplash.com/photo-1599844127201-f01a996b358c?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=zoran-zonde-stojanovski-Dw-oxX8ZM44-unsplash.jpg&w=640");
    var v2 = VitrinModel(id: 2, ad: "Resim2", resimUrl: "https://images.unsplash.com/photo-1596325847894-5c74ddd34857?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-rHeZKDr8FBQ-unsplash.jpg&w=640");
    var v3 = VitrinModel(id: 3, ad: "Resim3", resimUrl: "https://images.unsplash.com/photo-1518553552028-b1ba6f77cf98?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=rafael-alcure-Fzip3zb-h9k-unsplash.jpg&w=640");
    var v4 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1596325426091-d11002d625fa?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=soroush-golpoor-dTIFWJKNglE-unsplash.jpg&w=640");
    var v5 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1536685965216-c5f4478ec2cf?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=vladimir-fedotov-i8vqYZbKo8M-unsplash.jpg&w=640");
    var v6 = VitrinModel(id: 4, ad: "Resim4", resimUrl: "https://images.unsplash.com/photo-1606152659143-aa3a4166d432?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=dushawn-jovic-wrPYQix_1E4-unsplash.jpg&w=640");
    var vitrin2ListesiRepo = <VitrinModel>[];
    vitrin2ListesiRepo.add(v1);
    vitrin2ListesiRepo.add(v2);
    vitrin2ListesiRepo.add(v3);
    vitrin2ListesiRepo.add(v4);
    vitrin2ListesiRepo.add(v5);
    vitrin2ListesiRepo.add(v6);
    return vitrin2ListesiRepo;
  }
}