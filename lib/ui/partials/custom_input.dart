import 'package:flutter/material.dart';
import 'package:car_rental/constants/styles.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final Function onTap;
  final Function onSave;
  final IconData icon;
  final Function validator;
  final bool disabled;

  CustomInput({
    this.onTap,
    this.onSave,
    this.validator,
    this.disabled = false,
    @required this.icon,
    @required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      behavior: HitTestBehavior.opaque,
      child: TextFormField(
        enabled: this.onTap != null ? false : !this.disabled,
        decoration: InputDecoration(
          hintText: this.hintText,
          prefixIcon: Icon(this.icon, color: Colors.white70, size: 20),
          fillColor: Colors.white.withOpacity(0.05),
          contentPadding: EdgeInsets.all(10),
          focusedBorder: Styles.inputBorder,
          disabledBorder: Styles.inputBorder,
          enabledBorder: Styles.inputBorder,
          border: Styles.inputBorder,
          filled: true,
        ),
        validator: this.validator ?? (_) => null,
        onSaved: this.onSave ?? (_) {},
      ),
    );
  }
}