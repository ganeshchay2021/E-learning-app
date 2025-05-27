// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextformFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isPasswordField;

  final IconData icon;

  const TextformFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPasswordField = false,
    required this.icon,
  });

  @override
  State<TextformFieldWidget> createState() => _TextformFieldWidgetState();
}

class _TextformFieldWidgetState extends State<TextformFieldWidget> {
  bool isPasswordShown = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPasswordField ? true : false,
      controller: widget.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          labelText: widget.hintText,
          suffixIcon: widget.isPasswordField
              ? IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isPasswordShown = !isPasswordShown;
                      },
                    );
                  },
                  icon: isPasswordShown
                      ? const Icon(Icons.visibility_off)
                      : const Icon(
                          Icons.visibility,
                        ),
                )
              : null),
    );
  }
}
