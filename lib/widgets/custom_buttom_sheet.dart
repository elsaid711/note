import 'package:flutter/material.dart';
import 'package:note/constains.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key, this.onTap,  this.isLoading = false});
  final void Function()? onTap;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  'Add Note',
                  style: TextStyle(
                      color: Colors.black, fontSize: 16, fontFamily: 'MyFont'),
                ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
