import 'package:flutter/material.dart';

class GlowButton extends StatelessWidget {
  final String title;
  final Function onTap;

  GlowButton({
    this.onTap,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Text(this.title, style: TextStyle(fontWeight: FontWeight.bold))
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.6),
              blurRadius: 80,
              offset: Offset(0, 10),
            )
          ]
        ),
      ),
    );
  }
}