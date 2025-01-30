import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/constains.dart';
import 'package:note/views/notes_view.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';
import 'model/note_model.dart';
import 'simple_bloc.dart';

void main()async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBloc();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);


  runApp(const NotesApp());
}


class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,fontFamily: 'MyFont'),
        home: const NotesView(),
      ),
    );
  }
}
