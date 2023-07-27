
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomTextButtonAction(
            text: '19.99€',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomTextButtonAction(
            text: 'Free preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}

class CustomTextButtonAction extends StatelessWidget {
  const CustomTextButtonAction({super.key, required this.text, required this.textColor, required this.backgroundColor, this.borderRadius});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16)
              ),
              backgroundColor: backgroundColor
          ),
          onPressed: (){},
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
                color: textColor
            ),
          )
      ),
    );
  }
}

