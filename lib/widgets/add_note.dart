
import 'package:flutter/material.dart';
import 'package:note/widgets/custom_text_field.dart';
class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}