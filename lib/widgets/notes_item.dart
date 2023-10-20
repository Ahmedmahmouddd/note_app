import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Title',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 5, left: 4),
                child: Text(
                  'Subtitle and some words here',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 32,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, right: 26, left: 4),
              child: Text(
                'data',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
