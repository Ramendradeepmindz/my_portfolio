import 'dart:convert';
import 'dart:core';


import 'package:hive/hive.dart';

import 'hive_utils.dart';



class HiveLocalDB{

 static String hiveDatabase="HiveDatabase";

  //Hive Tables

  static String saveChecklist="saveChecklist";
  static String getCheckListQuestion="getCheckListQuestion";

  Box? box;
 
  init() async {
      box=await HiveUtil.openBox(HiveLocalDB.hiveDatabase);
  }
 
 
  read(String key) {
    final value = box?.get(key);
    if (value != null) return json.decode(value);
    return null;
  }
 
 
  save(String key, value) async {
 
    try{
       // await box.delete(key);
      await box?.put(key, json.encode(value));
 
    }catch(e){
print(e);
    }
 
  }






}