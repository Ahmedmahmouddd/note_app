import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

import '../widgets/add_note_button_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
        backgroundColor: const Color.fromARGB(255, 65, 65, 65).withOpacity(0.7),
        child: Icon(
          Icons.add,
          color: Colors.grey[400],
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
