import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/NewsResponse.dart';
import '../repo/repository.dart';

class NewsController extends GetxController{
  var country1 = TextEditingController().obs;
  var country2 = TextEditingController().obs;
  var list1 = NewsRespos().obs;
  var list2 = NewsRespos().obs;



  void searchCountry1(){
    Repo.getNews(country1.value.text).then((value) => {
      if(value != null){
        list1(value)
      }
    });
  }

  void searchCountry2(){
    Repo.getNews(country1.value.text).then((value) => {
      if(value != null){
        list2(value)
      }
    });
  }


}