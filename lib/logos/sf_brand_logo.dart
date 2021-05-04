import 'package:flutter/material.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/constants/sf_icon_name_constants.dart';
import 'package:shopform_widgets/text/sf_app_text.dart';
import 'package:shopform_widgets/images/sf_cached_network_circle_image.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFBrandLogoWidget extends StatelessWidget {
  final String logo;
  final Function onTap;
  final String name;

  SFBrandLogoWidget({Key key, this.logo, this.onTap, this.name})
      : super(key: key);

  Widget get _errorPlaceholder => ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          productPlaceholder,
          fit: BoxFit.cover,
          width: 116,
          height: 116,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            onTap?.call();
          },
          child: SFCachedNetworkCircleImage(
            imageUrl: logo ?? '',
            width: 116,
            height: 116,
            errorWidget: _errorPlaceholder,
            placeholder: _errorPlaceholder,
          ),
        ),
        SFContentSpace.vertical8(),
        SFAppText.black14Normal(
          text: name ?? '',
          style: TextStyle(color: SFAppColor.tundora),
        )
      ],
    );
  }
}
