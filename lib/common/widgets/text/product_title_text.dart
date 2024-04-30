import 'package:flutter/material.dart';

class AppProductTitleText extends StatelessWidget {
  const AppProductTitleText({
    super.key,
    required this.title,
    this.isSmallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool isSmallSize;
  final int maxLines;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: textAlign,
        style: isSmallSize
            ? Theme.of(context).textTheme.labelLarge
            : Theme.of(context).textTheme.titleSmall);
  }
}
