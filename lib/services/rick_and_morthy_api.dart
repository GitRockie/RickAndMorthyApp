
import 'dart:convert';

import 'package:dart_application_1/models/model.dart';
import 'package:http/http.dart' as http;


class RickAndMorthyApi {

  Model episodeModel = Model();
  
 
  Future<void> getRickAndMorthyApi() async  {

    var url =  Uri.parse('https://rickandmortyapi.com/api/episode');

    

    await http.get(url).then((response) {
    final episodeDecoded = jsonDecode(response.body);
    episodeModel = Model.fromJson(episodeDecoded);

    
    print(episodeModel.results!.first.episode);

    for (var i = 0; i < episodeModel.results!.length; i++) {
      print(episodeModel.results![i].characters!.first);
      print(episodeModel.results![i].episode);
    }


    

   });


  }
  
}