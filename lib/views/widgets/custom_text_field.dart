import 'package:flutter/material.dart';
import 'package:note_app/const_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLine=1, this.onSaved});
  final String hintText;
  final int maxLine; 
  final void Function(String?)? onSaved;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true)
        {
          return 'field is required';
        }
        else{
          return null;
        }
      
      },
      
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hintText,
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
