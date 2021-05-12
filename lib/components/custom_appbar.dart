import 'package:flutter/material.dart';
import 'package:memes_mood/components/decoration.dart';

PreferredSize customAppBar(BuildContext context, String title) {
  final height = MediaQuery.of(context).size.height;
  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top * 1.5,
      ),
      decoration: decoration(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
