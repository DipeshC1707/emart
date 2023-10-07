import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget textField({String?title,String?hint,controller,required bool isPass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).make(),
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: redColor)),
          )
      ),
      10.heightBox
    ],
  );
}
