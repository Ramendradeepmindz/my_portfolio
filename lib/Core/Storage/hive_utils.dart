
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
class HiveUtil{
  static Future<Box> openBox(boxNaame) async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
 
    return await Hive.openBox(boxNaame);
  }
}