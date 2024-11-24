import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/custom_buttom.dart';
import 'package:responsive_and_adaptive_dashboard/view/widgets/title_text_feild.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFeild(
                title: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFeild(
                title: "Item mount",
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButtom(
                    text: "Add more details",
                    backgroundColor: Colors.transparent)),
            SizedBox(width: 24),
            Expanded(child: CustomButtom(text: "Send Money")),
          ],
        )
      ],
    );
  }
}
