import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blueGrey.withOpacity(1)
      ),
      height: 45,
      width: 45,
      child: IconButton(icon: const Icon(Icons.search,color: Colors.white,),onPressed:(){} ),
    );
  }
}