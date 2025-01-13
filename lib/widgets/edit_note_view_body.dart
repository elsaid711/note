import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';

import 'custom_buttom_sheet.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            customAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
             SizedBox(
            height: 70,
          ),
          CustomTextField(
            'Title',
          ),
          SizedBox(
            height: 34,
          ),
          CustomTextField(
            'Content',
            maxLines: 6,
          ),
          SizedBox(height: 65,),
          ],
        ),
      ),
    );
  }
}