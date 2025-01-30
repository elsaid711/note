import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import '../../model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  final Box<NoteModel> notesBox; // تمرير الصندوق بدلًا من فتحه داخل الدالة

  AddNoteCubit(this.notesBox) : super(AddNoteInitial());

  void addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      await notesBox.add(note); // إضافة الملاحظة إلى الصندوق المفتوح مسبقًا
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
