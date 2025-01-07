import 'package:flutter/material.dart';
class noteItem extends StatelessWidget {
  const noteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 26),
      child: Container(
        padding: EdgeInsets.only(top: 10,bottom: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.orange,
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
          ),
        
        subtitle: Text('Build your career with flutter',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
          trailing: IconButton(onPressed: (){}, icon: Icon( Icons.delete,color: Colors.black,size: 35,)),
        ),
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 10),
            child: Text('Jan 08 2025',style: TextStyle(color: Colors.black.withOpacity(.5)),),
          ),
          ],
        ),
      
      ),
    );

  }
}

