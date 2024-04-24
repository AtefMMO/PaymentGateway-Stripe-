import 'package:flutter/material.dart';
import 'package:payment_gateway/Features/checkout/presentation/widgets/my_cart_view_body.dart';

import 'package:payment_gateway/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_outlined,color: Colors.black,),
        title: Text(
          'My Cart',style: Styles.style25,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: MyCartViewBody(),
    );
  }
}
