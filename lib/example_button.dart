import 'package:flutter/material.dart';
import 'package:navpages/navrail/navrail.dart';

class ExampleButton extends NrButtonWidget {
  const ExampleButton({
    super.key,
    super.label,
    super.icon,
    super.onTap,
    super.expanded = false,
    super.selected = false,
    super.showSelected = true,
    super.width = 0,
    super.height = 0,
    super.selectedColor,
    super.selectedBackgroundColor,
    super.unselectedBackgroundColor,
    super.unselectedColor,
    super.borderRadius,
    super.direction = NavRailDirection.vertical,
    super.labelPosition = NavRailButtonLabelPosition.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: (selected && showSelected)
              ? selectedBackgroundColor
              : unselectedBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label ?? 'oops',
            style: TextStyle(
              color: (selected && showSelected)
                  ? selectedColor
                  : unselectedColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  ExampleButton copyWith({
    String? label,
    IconData? icon,
    Function()? onTap,
    bool? expanded,
    bool? selected,
    bool? showSelected,
    double? width,
    double? height,
    Color? selectedColor,
    Color? selectedBackgroundColor,
    Color? unselectedColor,
    Color? unselectedBackgroundColor,
    BorderRadius? borderRadius,
    NavRailDirection? direction,
    NavRailButtonLabelPosition? labelPosition,
  }) => ExampleButton(
    label: label ?? this.label,
    icon: icon ?? this.icon,
    onTap: onTap ?? this.onTap,
    expanded: expanded ?? this.expanded,
    selected: selected ?? this.selected,
    showSelected: showSelected ?? this.showSelected,
    width: width ?? this.width,
    height: height ?? this.height,
    selectedColor: selectedColor ?? this.selectedColor,
    selectedBackgroundColor:
        selectedBackgroundColor ?? this.selectedBackgroundColor,
    unselectedColor: unselectedColor ?? this.unselectedColor,
    unselectedBackgroundColor:
        unselectedBackgroundColor ?? this.unselectedBackgroundColor,
    borderRadius: borderRadius ?? this.borderRadius,
    labelPosition: labelPosition ?? this.labelPosition,
    key: key,
    direction: direction ?? this.direction,
  );
}
