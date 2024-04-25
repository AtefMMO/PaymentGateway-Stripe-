import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
 PaymentMethodItem({
    super.key,required this.isActive,required this.image
  });
bool isActive=false;
String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side:  BorderSide(
              color: isActive? Colors.orange: Colors.black38,
              width: 1.50,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(blurRadius: 4, offset: Offset(0, 0), spreadRadius: 0)
          ]),
      duration: const Duration(milliseconds: 400),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            image,
            height: 24,
            fit: BoxFit.scaleDown,
          )),
    );
  }
}
