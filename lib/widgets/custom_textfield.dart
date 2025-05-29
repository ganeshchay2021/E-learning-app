// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustonTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final bool isPasswordField;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final void Function(String)? onChange;
  final int maxLine;
  final bool enable;
  final FocusNode focusNode;

  const CustonTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.isPasswordField = false,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.textInputType,
    this.onChange,
    this.maxLine = 1,
    this.enable = true,
    required this.focusNode,
  });

  @override
  State<CustonTextField> createState() => _CustonTextFieldState();
}

class _CustonTextFieldState extends State<CustonTextField> {
  bool _obscureText = false;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      validator: widget.validator,
      focusNode: widget.focusNode,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      maxLines: widget.maxLine,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.prefixIcon),
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(
                        Icons.visibility_off_outlined,
                      ),
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
