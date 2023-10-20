import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: CustomTextField(label: 'Title'),
            ),
            SizedBox(height: 20),
            CustomTextField(label: 'Content', maxLines: 6),
            SizedBox(height: 20),
            CustomButton(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
