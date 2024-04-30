import 'package:flutter/material.dart';

class AppProductPriceText extends StatelessWidget {
  const AppProductPriceText(
      {super.key,
      this.currencySign = 'kz',
      required this.price,
      this.cents = '00',
      this.priceWas,
      this.centsWas = '00',
      this.unit = 'set',
      this.maxLines = 1,
      this.isLarge = false,
      this.lineThrough = true});

  final String currencySign, price, cents, unit, centsWas;
  final String? priceWas;
  final int maxLines;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(currencySign + price,
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                style: isLarge
                    ? Theme.of(context).textTheme.titleLarge
                    : Theme.of(context).textTheme.titleMedium),
            Text(
              '.$cents',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              unit.trim() != '' ? '' : '/$unit',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        // if (priceWas?.trim() != '') ...[
        Row(
          children: [
            Text('$currencySign $priceWas',
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                style: isLarge
                    ? Theme.of(context).textTheme.labelMedium!.apply(
                        decoration:
                            lineThrough ? TextDecoration.lineThrough : null)
                    : Theme.of(context).textTheme.labelSmall!.apply(
                        decoration:
                            lineThrough ? TextDecoration.lineThrough : null)),
            Text(
              '.$centsWas',
              style: isLarge
                  ? Theme.of(context).textTheme.labelMedium!.apply(
                      decoration:
                          lineThrough ? TextDecoration.lineThrough : null)
                  : Theme.of(context).textTheme.labelSmall!.apply(
                      decoration:
                          lineThrough ? TextDecoration.lineThrough : null),
            ),
            Text(
              unit.trim() != '' ? '' : '/$unit',
              style: isLarge
                  ? Theme.of(context).textTheme.labelMedium!.apply(
                      decoration:
                          lineThrough ? TextDecoration.lineThrough : null)
                  : Theme.of(context).textTheme.labelSmall!.apply(
                      decoration:
                          lineThrough ? TextDecoration.lineThrough : null),
            ),
          ],
        ),
      ],
      // ],
    );
  }
}
