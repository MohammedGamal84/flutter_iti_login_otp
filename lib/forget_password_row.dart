import 'package:flutter/material.dart';
import 'package:flutter_iti_1/app_colors.dart';

class ForgetPasswordRow extends StatelessWidget {
  final String? firstWhiteText;
  final String? secoednBlcakText;
  const ForgetPasswordRow({
    super.key,
    this.firstWhiteText,
    this.secoednBlcakText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            firstWhiteText ?? 'text 1 ',
            style: TextStyle(
              color: AppColors.whiteApp,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          secoednBlcakText ?? '',
          style: TextStyle(
            color: AppColors.whiteBloc,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}