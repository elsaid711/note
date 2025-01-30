import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/constains.dart';
import 'package:note/views/notes_view.dart';
import 'cubits/add_note_cubit/add_note_cubit.dart';
import 'model/note_model.dart';
import 'simple_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ضمان تهيئة كل شيء قبل التشغيل

  await Hive.initFlutter(); // تهيئة Hive
  Bloc.observer = SimpleBloc(); // تعيين BlocObserver
  Hive.registerAdapter(NoteModelAdapter()); // تسجيل NoteModelAdapter

  // التأكد من أن الصندوق مفتوح مرة واحدة فقط
  if (!Hive.isBoxOpen(kNotesBox)) {
    await Hive.openBox<NoteModel>(kNotesBox);
  }

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(Hive.box<NoteModel>(kNotesBox)), // تمرير الصندوق
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'MyFont',
        ),
        home: const NotesView(),
      ),
    );
  }
}
