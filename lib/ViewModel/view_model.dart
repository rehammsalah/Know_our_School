import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:know_our_school/Model/model.dart';
import 'package:provider/provider.dart';



class ShowData extends ChangeNotifier
{
  SchoolModel? model ;
  var response;
  var data;

  Future<void>  readJson() async {
    response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
    data = await json.decode(response!);
    model=SchoolModel.fromjson(data[0]);
    notifyListeners();

  }





}