import 'package:flutter/material.dart';
import 'package:payment_flow/core/themes/styles/app_images.dart';
import 'package:payment_flow/core/themes/styles/app_text_styles.dart';
import 'package:payment_flow/features/presentation/views/widgets/custom_button.dart';
import 'package:payment_flow/features/presentation/views/widgets/custom_divider.dart';

import 'order_info_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Image.asset(
                AppImages.imagesBasketP,
                height: 350,
              ),
            ),
            const SizedBox(height: 25),
            const OrderInfoItem(
              title: 'Order Subtotal',
              price: r'$53.28',
            ),
            const OrderInfoItem(
              title: 'Discount',
              price: r'$0.00',
            ),
            const OrderInfoItem(
              title: 'Shipping',
              price: r'$7.00',
            ),
            const SizedBox(height: 15),
            const CustomDivider(),
            const SizedBox(height: 20),
            const OrderInfoItem(
              textStyle: AppTextStyles.interSemiBold24,
              title: 'Total',
              price: r'$60.28',
            ),
            const SizedBox(height: 20),
            CustomButton(
                textStyle: AppTextStyles.interMedium22,
                textColor: Colors.black,
                text: 'Complete Order',
                onPressed: () {},
                buttonColor: const Color(0xff34A853))
          ],
        ),
      ),
    );
  }
}
