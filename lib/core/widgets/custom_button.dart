import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,required this.value,required this.function, this.isLoading=false
  });
final String value;
final bool isLoading;
final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      return function!();
    },
      child: Container(
        width: 350,
        height: 70,
        decoration: ShapeDecoration(
            color: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Center(
          child: isLoading?const CircularProgressIndicator():Text(
            value,
            style: TextStyles.style22,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}