import 'package:flutter/material.dart';
import 'package:swap/constants/widgets.dart';
import 'package:swap/controllers/appLoad_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final AppLoadController appLoadController =
  Get.put(AppLoadController.getInstance(), permanent: true);

  TextEditingController activityIdController = TextEditingController();
  TextEditingController appCodeController = TextEditingController();

  Color hexToColor(String hexColor) {
    // Remove # symbol if it exists
    if (hexColor.startsWith('#')) {
      hexColor = hexColor.substring(1);
    }

    // Parse the hex color string to an integer
    int hexValue = int.parse(hexColor, radix: 16);

    // Add an alpha value of FF (fully opaque) if the hex string is of length 6 (RGB)
    if (hexColor.length == 6) {
      hexValue |= 0xFF000000;
    }
    // Return the Color object
    return Color(hexValue);
  }

  @override
  void initState() {
    // TODO: implement initState
    AppLoadController.getInstance().getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child:  Obx(() => appLoadController.fieldsList.isEmpty ? const Center(child: CircularProgressIndicator()) : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child:PrimaryInputText(hintText: 'activityId', controller: activityIdController, onValidate: (v){print(v); })),
                SizedBox(width: 10),
                Expanded(child: PrimaryInputText(hintText: 'appCode', controller: appCodeController, onValidate: (v){print(v); })),
              ],
            ),
            SizedBox(height: 10),
            fullIconColorButton(title: 'Submit', textColor: Colors.white, buttonColor: Colors.redAccent, onPressed: (){
              appLoadController.appCode.value = appCodeController.text;
              appLoadController.activityCode.value = int.parse(activityIdController.text);
              appLoadController.getToken();
            }, context: context),
            SizedBox(height:20),
            commonBoldText(text: appLoadController.pageTitle.value, color: Colors.red, fontSize: 21),
            SizedBox(height: 30),
            swapContainer(title: appLoadController.fieldsList[3].fieldName!,context: context, textColor: hexToColor(appLoadController.fieldsList[3].textColourCode!), backgroundColor:hexToColor(appLoadController.fieldsList[3].backgroundColourCode!))
          ],
        )),
      )
    );
  }
}
