// ignore_for_file: avoid_print

import '../models/usermodel.dart';
import 'package:http/http.dart' as http;

class UserViewModel {
  Future<List?> getUsers() async {
    try {
      http.Response hasil = await http.get(
          Uri.parse("http://byriza.com/webapi/read.php"),
          headers: {"Accept": "application/json"});
      if (hasil.statusCode == 200) {
        print("data category success");
        final data = userModelFromJson(hasil.body);
        return data;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("error catch $e");
      return null;
    }
  }
}
