import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_note_item.dart';
class notesViewBody extends StatelessWidget {
  const notesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
          const  customAppBar(),
          noteItem(),
          ],
        ),
      ),
    );
  }
}
