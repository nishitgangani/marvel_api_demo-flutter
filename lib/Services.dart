import 'package:http/http.dart' as http;
import 'Model.dart';

class Services{
  static const String url =  'https://simplifiedcoding.net/demos/marvel/';


  Future<List<Model>> getUsers() async {
    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        final List<Model> users = modelFromJson(response.body);
        return users;
      }else{
        return List<Model>();
      }
    }
    catch(e){
      return List<Model>();
    }
  }
}