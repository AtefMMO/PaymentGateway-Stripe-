import 'package:flutter/material.dart';
import 'package:payment_gateway/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,required this.value,required this.function
  });
final String value;
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
            color: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Center(
          child: Text(
            value,
            style: Styles.style22,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}