
import 'package:flutter/material.dart';
import 'package:note/widgets/custom_buttom_sheet.dart';
import 'package:note/widgets/custom_text_field.dart';
class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom,right: 16,left: 16),
        child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            'Title',
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            'Content',
            maxLines: 5,
          ),
          SizedBox(height: 65,),
          CustomButtomSheet(),
          SizedBox(height: 24,),
        ],
              ),
      ),
    );
  }
}