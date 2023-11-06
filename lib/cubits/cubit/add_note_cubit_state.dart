// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}
class AddNoteLoading extends AddNoteCubitState {}
class AddNoteSuccess extends AddNoteCubitState {}
class AddNoteFailure extends AddNoteCubitState {
  final String errMessage;
  AddNoteFailure(
    this.errMessage,
  );
}
