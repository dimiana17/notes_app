import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Column(
        children: [CustomAppBar(), NoteItem()],
      ),
    );
  }
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          color: const Color(0xffE3C25F),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build your career with Tharwat Samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16),
            child: Text(
              'May 21.2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
