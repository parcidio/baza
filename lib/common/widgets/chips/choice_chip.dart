import '../../../common/widgets/custom_shapes/containers/circular_contianer.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip(
      {super.key, required this.selected, required this.text, this.onSelected});

  final bool selected;
  final String text;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFuncions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? AppCircularContainer(
                height: 50,
                width: 50,
                backgroundColor: AppHelperFuncions.getColor(text)!,
              )
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        selectedColor: isColor ? AppHelperFuncions.getColor(text) : null,
        backgroundColor: isColor ? AppHelperFuncions.getColor(text)! : null,
      ),
    );
  }
}
