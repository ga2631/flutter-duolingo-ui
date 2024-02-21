import 'package:flutter/material.dart';
import '../../../configs/_constants.dart';
import '../../../configs/_colors.dart';
import '../../../configs/_icons.dart';

class Stage extends StatelessWidget {
  const Stage({
    super.key,
    this.subtitle = '',
    this.subtitleColor = colorMaskGreen,
    this.title = '',
    this.titleColor = colorSnow,
    this.backgroundColor = colorFeatherGreen,
    this.shadowBackgroundColor = colorWingOverlay,
  });

  final String title;
  final String subtitle;

  final Color titleColor;
  final Color subtitleColor;
  final Color backgroundColor;
  final Color shadowBackgroundColor;

  final double dividerThinkness = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(baseRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: shadowBackgroundColor,
            blurRadius: 0,
            offset: const Offset(0, 4),
          ),
        ],
        color: backgroundColor,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Stage name
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(basePadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle.toUpperCase(),
                      style: TextStyle(
                        color: subtitleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: baseFontSize * 1.1,
                      ),
                    ),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: baseFontSize * 1.2,
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Divider
            VerticalDivider(
              thickness: dividerThinkness,
              width: dividerThinkness,
              color: shadowBackgroundColor,
            ),

            // Stage icon
            Container(
              padding: const EdgeInsets.all(basePadding * 2),
              child: Image.asset(iconLanguage),
            ),
          ],
        ),
      ),
    );
  }
}
