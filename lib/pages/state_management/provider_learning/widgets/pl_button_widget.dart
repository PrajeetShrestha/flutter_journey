import 'package:flutter/material.dart';

class PLButtonWidget extends StatelessWidget {
  const PLButtonWidget(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color})
      : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(16),
            elevation: 8,
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
