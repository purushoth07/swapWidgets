import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:swap/api/api_callings.dart';
import 'package:swap/api/api_endpoints.dart';

class APICallings {

  ///Get Token
  static Future<String?> getToken(
      {required String appCode,required String companyCode}) async {
    Map<String, dynamic> registerObject = {
      "appCode": appCode,
      "companyCode": companyCode,
    };
    var url = Uri.parse(APIEndPoints.getToken);
    print('URL : $url');
    print("Body: ${json.encode(registerObject)}");
    var response = await http.post(
      url,
      body: jsonEncode(registerObject),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
    );
    print('the response are crossed');
    print(response.statusCode);
    if(response.statusCode == 403){
      return '403 Server error';
    }else if(response.statusCode == 200){
      return response.body;
    }else{
      return 'Something went wrong';
    }
  }

  ///Get  Fields
  static Future<String?> getFields(
      {required String token, required String appCode,required int activityId, required String companyCode, required String deviceType}) async {
    Map<String, dynamic> registerObject = {
    "appCode": appCode,
    "activityId": activityId,
    "companyCode": companyCode,
    "deviceType": deviceType
    };
    var url = Uri.parse(APIEndPoints.getFields);
    print('URL : $url');
    print("Body: ${json.encode(registerObject)}");
    var response = await http.post(
      url,
      body: jsonEncode(registerObject),
      headers: {"Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
    );
    print('the response are crossed');
    print(response.statusCode);
    if(response.statusCode == 403){
      return '403 Server error';
    }else if(response.statusCode == 200){
      return response.body;
    }else{
      return 'Something went wrong';
    }
  }
}