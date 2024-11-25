import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/models/all_expenses_items_model.dart';
import 'package:responsive_and_adaptive_dashboard/utils/app_styles.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/all_expenses_items_header.dart';

class UnActiveAllExpensesItems extends StatelessWidget {
  const UnActiveAllExpensesItems({
    super.key,
    required this.itemsModel,
  });

  final AllExpensesItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemsHeader(
            image: itemsModel.image,
          ),
          const SizedBox(height: 32),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemsModel.name,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemsModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemsModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItems extends StatelessWidget {
  const ActiveAllExpensesItems({
    super.key,
    required this.itemsModel,
  });

  final AllExpensesItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemsHeader(
            image: itemsModel.image,
            imageColor: Colors.white,
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(height: 32),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemsModel.name,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemsModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemsModel.price,
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
