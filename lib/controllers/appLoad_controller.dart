import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swap/api/api_callings.dart';
import 'package:swap/constants/constants.dart';
import 'package:swap/models/fields.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppLoadController extends GetxController {
  static AppLoadController? _instance;

  static AppLoadController getInstance() {
    _instance ??= AppLoadController();
    return _instance!;
  }

  RxString appCode = "DF".obs;
  RxString companyCode = "AARA".obs;
  RxInt activityCode = 552.obs;
  RxString deviceType = "Mobile".obs;

  RxString appToken = ''.obs;

  RxString pageTitle = ''.obs;

  Constants constants = Constants();


  ///Global  List
  RxList<WidgetFields> fieldsList = <WidgetFields>[].obs;

  void initializeApplication(){
    _getToken();
  }

  _getToken(){
    getToken();
  }

  getToken() async{
    try{
      var response = await APICallings.getToken(appCode: appCode.value, companyCode: companyCode.value);
      if(response != null){
        var jsonBody = json.decode(response);
        if (jsonBody['status'] == 'success') {
          appToken.value = jsonBody['data'];
        }
        print('the app token is $pageTitle');
        getFields(appToken.value, appCode.value, activityCode.value, companyCode.value, deviceType.value);
      }
      print(response);
    }catch(error){
      print('the get token error $error');
      Fluttertoast.showToast(msg: error.toString());
    }
  }

  getFields(token, appcode, activityCode, companyCode, deviceType) async{
    try{
      var response = await APICallings.getFields(appCode: appcode, companyCode: companyCode, token: token, activityId: activityCode, deviceType: deviceType);
      if(response != null){
        var jsonBody = json.decode(response);
        if (jsonBody['status'] == 'success') {
          fieldsList.value = widgetFieldsFromJson(response);
          pageTitle.value = jsonBody['title'];
        }
        print('the received 1 field is ${pageTitle.value}');
      }
    }catch(error){
      print("this is for get fields error $error");
      Fluttertoast.showToast(msg: error.toString());
    }
  }

}