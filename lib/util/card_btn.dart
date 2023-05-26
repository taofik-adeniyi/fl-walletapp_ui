import 'package:flutter/material.dart';

class CardBtn extends StatelessWidget {
  final IconData icon;
  final String btnText;
  final Color iconColor;
  const CardBtn(
      {super.key,
      required this.btnText,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 20,
                    spreadRadius: 10)
              ]),
          child: Center(
              child: Icon(
            icon,
            size: 55.0,
            color: iconColor,
          )),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(btnText,
            style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 18,
                fontWeight: FontWeight.bold))
      ],
    );
  }
}
