import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:post_mmvm/CommanMethod/comman.dart';
import 'package:post_mmvm/Constants/api_constants.dart';

class HomescreenRepo {
  Future<Map<String, dynamic>> postcall(String endpoint, headersdata, bodydata) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstants.baseUrl + endpoint),
        // headers: headersdata,
        body: bodydata,
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        final errorMessage = "No Data Found Status: ${response.statusCode}";
        Comman.errortoast(errorMessage);
        throw Exception(errorMessage);
      }
    } catch (error) {
      final errorMessage = "Error in Post Api: ${error.toString()}";
      Comman.errortoast(errorMessage);
      throw Exception(errorMessage);
    }
  }
}
