import 'package:flutter/material.dart';
import 'package:note/constains.dart';
import 'package:note/widgets/notes_view_body.dart';

import '../widgets/add_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: KPrimaryColor,
        onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          context: context, builder: (context) {
          return AddNoteButtomSheet();
        },);
      },
      child: Icon(Icons.add,color: Colors.black,),
      ) ,
      body:const notesViewBody(),
    );
  }
}
