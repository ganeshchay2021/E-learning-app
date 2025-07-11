// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFullWidth;
  final double height;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isOutlined;
  final IconData? icon;
  final bool isLoading;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFullWidth = true,
    this.height = 55,
    this.backgroundColor,
    this.textColor,
    this.isOutlined = false,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      height: height,
      child: isOutlined
          ? OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  side:
                      BorderSide(color: backgroundColor ?? theme.primaryColor)),
              onPressed: isLoading ? null : onPressed,
              child: _buildButtonContent(theme),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor ?? theme.primaryColor),
              onPressed: onPressed,
              child: _buildButtonContent(theme),
            ),
    );
  }

  Widget _buildButtonContent(ThemeData theme) {
    if (isLoading) {
      return SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            isOutlined ? theme.primaryColor : Colors.white,
          ),
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 25,
              color: isOutlined
                  ? (backgroundColor ?? theme.primaryColor)
                  : (textColor ?? Colors.white),
            ), // Icon
          ],
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: isOutlined
                  ? (backgroundColor ?? theme.primaryColor)
                  : (textColor ?? Colors.white),
            ), // TextStyle
          )
        ],
      ); //
    }
  }
}
