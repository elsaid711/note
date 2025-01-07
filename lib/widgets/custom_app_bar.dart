import 'package:flutter/material.dart';
import 'package:note/widgets/custo,_search_icon.dart';
class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        customSearchIcon(),
      ],
    );
  }
}
