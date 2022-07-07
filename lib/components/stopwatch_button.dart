import 'package:flutter/material.dart';

class StopWatchButton extends StatelessWidget {
  const StopWatchButton({
    required this.text,
    required this.click,
    required this.icon,
    Key? key,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
