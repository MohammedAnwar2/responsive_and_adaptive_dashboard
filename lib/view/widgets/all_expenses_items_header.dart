import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemsHeader extends StatelessWidget {
  const AllExpensesItemsHeader(
      {super.key,
      required this.image,
      this.imageColor,
      this.imageBackgroundColor});
  final String image;
  final Color? imageColor, imageBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  color: imageBackgroundColor ?? const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imageColor ?? const Color(0xff064061),
          ),
        )
      ],
    );
  }
}
