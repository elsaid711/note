import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/constains.dart';
import 'package:note/cubits/cubit/notes_cubit.dart';
import 'package:note/widgets/notes_view_body.dart';
import '../model/note_model.dart';
import '../widgets/add_note_buttom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(Hive.box<NoteModel>(kNotesBox)),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return AddNoteButtomSheet();
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: const notesViewBody(),
      ),
    );
  }
}
