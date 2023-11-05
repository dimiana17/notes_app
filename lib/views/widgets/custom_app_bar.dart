import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appTitle, required this.icon});
  final String appTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appTitle,
          style: const TextStyle(fontSize: 28),
          
        ),
        CustomSearchIcon(icon: icon,),
        
        
      ],
    );
  }
}


