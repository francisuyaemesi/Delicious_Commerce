import 'package:delicious_commerce/utils/dimensions.dart';
import 'package:delicious_commerce/widgets/app_icon.dart';
import 'package:delicious_commerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({required this.appIcon, required this.bigText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
          left: Dimensions.width20,
          top: Dimensions.width10,
          bottom: Dimensions.width10),
      child: Row(
        children: [appIcon, SizedBox(width: Dimensions.width20), bigText],
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 1,
          offset: Offset(0, 5),
          color: Colors.grey.withOpacity(0.2),
        )
      ]),
    );
  }
}
