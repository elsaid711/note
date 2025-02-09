import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import '../../model/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
    final Box<NoteModel> notesBox; // تمرير الصندوق بدلًا من فتحه داخل الدالة

  NotesCubit(this.notesBox) : super(NotesInitial());

  fetchallnotes(NoteModel note )async {
     emit(NotesLoading());
    try {
      await notesBox.add(note); // إضافة الملاحظة إلى الصندوق المفتوح مسبقًا
          final notes = notesBox.values.toList(); // Get the list of notes from the box
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
