import 'dart:convert';
import 'package:flutter_flag/model/model.dart';
import 'package:http/http.dart' as http;


Future<List<Bandeiras>> GetBandeiras() async{
  final url = Uri.parse('https://countriesnow.space/api/v0.1/countries/flag/images');
  final response = await http.get(url);
  if(response.statusCode==200){
    final jsonData = jsonDecode(response.body);
    final JsonArray = jsonData['data'];
    List<Bandeiras>countries = [];
    for(var jsonCountry in JsonArray){
      Bandeiras bandeiras = Bandeiras(
          name: jsonCountry['name'],
          flag: jsonCountry['flag']);
      countries.add(bandeiras);
    }
    return countries;
  }else{
    throw Exception('erro ao acessar os dados');
  }
}