import 'package:flutter/material.dart';
import 'package:quiz_application/app_constants/text_styles/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final Color color;
  final VoidCallback onPress;
  CustomButton({this.textButton, this.color, this.onPress});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 85.0, vertical: 30.0),
          child: Text(
            textButton,
            style: AppTextStyle.button,
          ),
        ),
      ),
    );
  }
}
