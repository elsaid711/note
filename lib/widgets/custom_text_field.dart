import 'package:flutter/material.dart';
import 'package:note/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(this.hintText, {super.key,this.maxLines=1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return 
      TextField(
        maxLines: maxLines,
        cursorColor: kPrimaryColor,
        decoration:InputDecoration(
          hintText:hintText ,
          hintStyle: const TextStyle(color: Colors.green),
          border: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      );
  }

  OutlineInputBorder buildBorder([color]) {
    return  OutlineInputBorder(
          borderSide: BorderSide(color:color ?? Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8),
        
          ),


        );
  }
}