import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/AddNote/add_notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddingShowModalbottomsheet extends StatelessWidget {
  const AddingShowModalbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            } else if (state is AddNotesFailure) {
              print('failed ${state.errMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNotesLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const SingleChildScrollView(child: AddNoteForm()),
                ));
          },
        ),
      ),
    );
  }
}
