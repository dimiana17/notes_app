import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const_file.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  



  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try {
  var notesBox=Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
  await notesBox.add(note);
} catch (e) {
  AddNoteFailure(e.toString());
}
  }

  
}
