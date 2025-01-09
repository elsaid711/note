import 'package:flutter/material.dart';
import 'package:note/constains.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Center(child: Text('Add Note',style: TextStyle(color: Colors.black,fontSize: 16,fontFamily: 'MyFont'),)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: KPrimaryColor,
      ),
    );
  }
}