import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFPartlyChip extends StatefulWidget {
  final List<PartlyChipModel> models;
  final BorderRadius borderRadius;
  final Color borderColor;
  final ValueChanged<PartlyChipModel> onChange;

  ///make this widget able to select between items
  final bool switchable;

  const SFPartlyChip({
    Key key,
    this.models,
    this.borderRadius,
    this.borderColor,
    this.onChange,
    this.switchable = false,
  }) : super(key: key);

  @override
  _SFPartlyChipState createState() => _SFPartlyChipState();
}

class _SFPartlyChipState extends State<SFPartlyChip> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.models == null || widget.models.isEmpty) {
      return Container();
    }
    return Row(
      children: [
        Material(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: widget.borderColor ?? SFAppColor.gainsboroGray, width: 1),
            borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
          ),
          color: Colors.transparent,
          child: IntrinsicHeight(
            child: Row(
              children: _buildChildren(),
            ),
          ),
        ),
      ],
    );
  }

  void _onChangeValue({PartlyChipModel model}) {
    widget.models.forEach((item) {
      if (model == item) {
        item.selected = true;
        return;
      }
      item.selected = false;
    });
  }

  Widget _buildItem(
      {PartlyChipModel model,
      VoidCallback onTap,
      bool showRightBorder = false}) {
    return GestureDetector(
      onTap: () {
        if (widget.switchable ?? false) {
          onTap?.call();
        }
      },
      child: Container(
        decoration: BoxDecoration(
            color: model.selected ? SFAppColor.lightOrange : Colors.white,
            border: Border(
                right: BorderSide(
              color: widget.borderColor ?? SFAppColor.gainsboroGray,
              width: showRightBorder ? 1 : 0,
            ))),
        padding: EdgeInsets.all(8),
        child: SFAppText(
          model.title ?? '',
          style: TextStyle(
            fontSize: 12,
            color: model.selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildChildren() {
    final length = widget.models.length;
    final items = widget.models.map((e) {
      final index = widget.models.indexOf(e);
      return _buildItem(
          model: e,
          onTap: () {
            _onChangeValue(model: e);
            setState(() {});
            widget.onChange?.call(e);
          },
          showRightBorder: (length == 2 && index == 0) ||
              (index > 0 && index < widget.models.length - 1));
    }).toList();
    return items;
  }
}

// ignore: must_be_immutable
class PartlyChipModel<T> extends Equatable {
  ///[title] for display
  final String title;

  ///[value] is unique, to be replaced by title
  final T value;

  ///this model is selected or not
  ///default is false
  ///if you want to initialize with default selected item, set = true when initializing
  bool selected;

  PartlyChipModel({this.title, this.value, this.selected = false});

  @override
  List<Object> get props => [title, value, selected];
}
