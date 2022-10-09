import 'package:flutter/material.dart';

class SpoButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const SpoButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      color: Colors.white,
      textColor: Colors.black,
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
