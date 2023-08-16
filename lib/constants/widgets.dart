import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryInputText extends StatelessWidget {
  final String hintText;
  final String? Function(String? value) onValidate;
  final String? Function(String? value)? onChange;
  final TextEditingController? controller;
  final bool isEnabled;
  final int maxLines;
  final int? maxLength;
  final Widget? suffixImage;
  final TextInputType textInputType;
  final FocusNode? focusNode;
  final bool? readOnly;
  final bool? obscureText;
  final String? value;
  const PrimaryInputText({Key? key,this.obscureText,this.value, required this.hintText,this.readOnly, this.controller, required this.onValidate,this.isEnabled = true, this.textInputType = TextInputType.text, this.maxLines=1,this.maxLength, this.onChange, this.suffixImage, this.focusNode}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      readOnly: readOnly ?? false,
      style: GoogleFonts.lexend(color: Colors.black),
      controller: controller,
      focusNode: focusNode,
      obscureText: obscureText ?? false,
      validator: onValidate,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: isEnabled,
      onChanged: onChange,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        counterText: "",
        labelText: hintText,
        suffixIcon: suffixImage,
        labelStyle: GoogleFonts.lexend(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black54
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black54
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

///This is the widget for creating buttons
Widget commonSmallColorButton(
    {required String title,
      required Color textColor,
      double? fontSize,
      required Color buttonColor,
      required VoidCallback onPressed}) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        padding:
        MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 0, horizontal: 2)),
        elevation: MaterialStateProperty.all(2),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          // side: const BorderSide(color: Color(0xff979797)),
            borderRadius: BorderRadius.circular(16)))),
    onPressed: onPressed,
    child: Padding(
      padding: const EdgeInsets.all(0),
      child: Text(
        title,
        style: GoogleFonts.lexend(
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    ),
  );
}

///This is the widget for creating buttons
Widget fullIconColorButton(
    {required String title,
      required Color textColor,
      required Color buttonColor,
      Color? iconColor,
      required BuildContext context,
      required VoidCallback onPressed,
      String? iconUrl}) {
  return SizedBox(
    height: 45,
    width: MediaQuery.of(context).size.width * 1,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        padding:
        MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12)),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SvgPicture.asset(iconUrl, color: iconColor,),
          Text(
            title,
            style: GoogleFonts.lexend(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ],
      ),

    ),
  );
}


///Swap Container
Widget swapContainer({
  required String title,
  required Color textColor,
  required Color backgroundColor,
  required BuildContext context
}){
  return Container(
    height: 100,
    width: MediaQuery.of(context).size.width * 1,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // Shadow color
          spreadRadius: 5, // Spread radius
          blurRadius: 7, // Blur radius
          offset: Offset(0, 3), // Offset in the x and y direction
        ),
      ],
    ),
    child: Center(
      child: Text(
        title, style: GoogleFonts.lexend(
        fontSize: 15,
        color: textColor
      ),
      ),
    ),
  );
}

Widget commonBoldText({required String text,TextAlign? textAlign, int? maxLines, TextOverflow? textOverflow, Color? color, double? fontSize}){
  return Text(text,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      style: GoogleFonts.lexend(
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      )
  );
}