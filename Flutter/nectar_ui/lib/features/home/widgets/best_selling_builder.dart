import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_styles.dart';
import 'package:nectar_ui/features/home/models/product_model.dart';
import 'package:nectar_ui/features/home/widgets/product_cart.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive Offer', style: TextStyles.titleStyle()),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyles.bodyStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            return ProductCart(model: offerProducts[index]);
          },
          itemCount: offerProducts.length,
        ),
      ],
    );
  }
}
