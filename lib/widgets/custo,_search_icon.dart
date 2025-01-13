import 'package:flutter/material.dart';
class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key, required this.icon});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blueGrey.withOpacity(1),
      ),
      height: 45,
      width: 45,
      child: IconButton(icon:  Icon(icon,color: Colors.white,),onPressed:(){} ),
    );
  }
}