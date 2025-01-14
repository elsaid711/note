import 'package:flutter/material.dart';
import 'package:note/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(this.hintText, {super.key,this.maxLines=1, this.onSaved});
final String hintText;
final int maxLines;
final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return 
      TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
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