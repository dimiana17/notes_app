import 'package:flutter/material.dart';
import 'package:note_app/const_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});



  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: 'Title',
        hintStyle: const TextStyle(color: kPrimaryColor)
        
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color:color ?? Colors.white)
        
      );
  }
}
