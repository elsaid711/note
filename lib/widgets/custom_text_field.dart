import 'package:flutter/material.dart';
import 'package:note/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(this.hintText, {super.key,this.maxLines=1});
final String hintText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        maxLines: maxLines,
        cursorColor: KPrimaryColor,
        decoration:InputDecoration(
          hintText:hintText ,
          hintStyle: const TextStyle(color: Colors.green),
          border: buildBorder(),
          focusedBorder: buildBorder(KPrimaryColor),
        ),
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