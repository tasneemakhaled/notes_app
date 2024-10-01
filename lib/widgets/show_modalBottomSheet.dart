import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/AddNote/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddingShowModalbottomsheet extends StatelessWidget {
  const AddingShowModalbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          } else if (state is AddNotesFailure) {
            print('failed ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: SingleChildScrollView(child: AddNoteForm()));
        },
      ),
    );
  }
}
