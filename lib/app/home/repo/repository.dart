import 'dart:io';

import 'package:hani/app/home/model/NewsResponse.dart';
import 'package:hani/utilitise/utilities.dart';
import 'package:http/http.dart' as http;

class Repo{

  static Future<NewsRespos?> getNews(String searchText) async {
    var url = Uri.https(AppConstant.url,'/v2/everything?q=$searchText&apiKey=${AppConstant.ApiKey}');
    try {
      var response = await http.get(url);
      print('response ${response.body}');
      if(response.statusCode == 200){
        return newsResposFromJson(response.body);
      }else{
        print('print data respons ${response.statusCode}');
        return null;
      }
    }on SocketException {
      print('error 666666');
     }
    return null ;
    
  }

}

