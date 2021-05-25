import 'package:flutter/material.dart';
import 'package:shopform_widgets/buttons/dropdown/sf_dropdown_button.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';
import 'package:shopform_widgets/utils/sf_app_text_style.dart';

class SFHeaderDropDownButton extends StatefulWidget {
  final String? title;
  final String? hint;
  final List<Object> items;
  final ValueChanged<Object>? onChanged;
  final Object? selectedItem;

  SFHeaderDropDownButton({
    this.title,
    this.hint,
    required this.items,
    this.selectedItem,
    this.onChanged,
  });

  @override
  _SFHeaderDropDownButtonState createState() => _SFHeaderDropDownButtonState();
}

class _SFHeaderDropDownButtonState extends State<SFHeaderDropDownButton> {
  Object? selectedItem;

  bool get enable => widget.items.isNotEmpty;

  List<SFDropdownMenuItem<Object>> get dropdownMenuItems {
    return widget.items.map((item) {
      return SFDropdownMenuItem<Object>(
        value: item,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 4),
            Text(item.toString()),
          ],
        ),
      );
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    selectedItem = widget.selectedItem;
  }

  @override
  void didUpdateWidget(SFHeaderDropDownButton oldWidget) {
    selectedItem = widget.selectedItem;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = SFAppTextStyle.of(
      context,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: SFAppColor.black,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if (widget.title != null)
          SFAppText(
            widget.title!,
            style: enable
                ? titleTextStyle
                : titleTextStyle?.copyWith(color: SFAppColor.greyDark),
          ),
        SFDropdownButton(
          underline: Container(
            height: 1,
            color: SFAppColor.gainsboroGray,
          ),
          hint: widget.hint != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(width: 4),
                    Text(
                      widget.hint!,
                      style: SFAppTextStyle.of(
                        context,
                        color: SFAppColor.greyDark,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              : null,
          style: SFAppTextStyle.of(
            context,
            color: SFAppColor.black,
            fontSize: 12,
          ),
          icon: Icon(
            Icons.expand_more,
            size: 10,
          ),
          value: selectedItem,
          isExpanded: true,
          itemHeight: null,
          items: dropdownMenuItems,
          onChanged: enable
              ? (item) {
                  if (item != null) {
                    setState(() {
                      selectedItem = item;
                    });
                    widget.onChanged?.call(item);
                  }
                }
              : null,
        ),
      ],
    );
  }
}
