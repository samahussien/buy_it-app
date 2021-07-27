import 'package:flutter/material.dart';

Widget defaultButton({
  double width=150.0, height=35.0 ,fontSize=18.0,
  @required Color background=Colors.black, fontColor,
  @required String text,
  @required Function function,


})=> Container(
  width:width,
 // height: height,


  child: MaterialButton(
color: background,
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: fontColor,
      ),),


onPressed:function,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

);
Widget defaultFormField({
  @required TextEditingController controller,
  @required String label,
  double fontSize=18.0,
  @required  Function validate,
  @required IconData prefix,
  Color iconColor= Colors.orange,
  IconData suffix,
  Function suffixPressed,
  @required TextInputType type,
  bool isPassword= false,

})=>TextFormField(
  cursorColor: Colors.white,
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  validator:validate ,
  decoration: InputDecoration(
    labelText: label,


    labelStyle: TextStyle(
      fontSize:fontSize,
    ),

    fillColor: Colors.white70.withOpacity(0.3),
    filled: true,
    prefixIcon: Icon(
      prefix,
      color: Colors.orange.shade600,
      size: 25.0,
    ),
    suffixIcon: suffix!=null?IconButton(
      icon: Icon(suffix),
     // color: Colors.orange.shade600,
      onPressed: suffixPressed,
      ):null,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(35.0),
    ),
    focusedBorder: OutlineInputBorder(

      borderSide: BorderSide(color: Colors.green),
      borderRadius: BorderRadius.circular(35.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(35.0),
    ),
    errorBorder: OutlineInputBorder(

      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(35.0),
    ),
  ),
);