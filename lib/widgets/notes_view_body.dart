import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: const Column(
        children: [
          SizedBox(height: 35),
          CustomAppBar(title: 'Notes', icon: Icons.manage_search_sharp),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
