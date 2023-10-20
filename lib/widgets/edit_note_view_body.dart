import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 35),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          CustomTextField(label: 'Title'),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            label: 'Content',
            maxLines: 8,
          )
        ],
      ),
    );
  }
}
