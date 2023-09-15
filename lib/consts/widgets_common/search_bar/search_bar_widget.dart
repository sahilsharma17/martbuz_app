import 'package:flutter/material.dart';
import 'package:martbuz_app/consts/colors.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child:
        Container(
          alignment: Alignment.center,
          height: 62,
          color: textfieldGrey,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: whiteColor,
            ),
          ),
        ),
    );
  }
}
