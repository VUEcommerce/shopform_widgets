import 'package:flutter/material.dart';
import 'package:shopform_widgets/buttons/follow/sf_follow_type.dart';
import 'package:shopform_widgets/buttons/sf_elevated_button.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFFollowButton extends StatelessWidget {
  final VoidCallback onTap;
  final SFFollowType type;
  final bool disableBorder;
  final String textFollowing;
  final String textFollow;

  SFFollowButton({
    required this.onTap,
    required this.type,
    required this.textFollowing,
    required this.textFollow,
    this.disableBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case SFFollowType.fetching:
        return Container(
          width: 25,
          height: 25,
          child: CircularProgressIndicator(),
        );
      case SFFollowType.unfollowing:
        return SFElevatedButton(
          text: '+ $textFollow',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: SFAppColor.white,
          ),
          backgroundColor: SFAppColor.tulipTreeGold,
          height: 25,
          horizontalPadding: 18,
          onTap: onTap,
        );
      case SFFollowType.following:
        return SFElevatedButton(
          height: 25,
          onTap: onTap,
          text: textFollowing,
          backgroundColor: SFAppColor.white,
          horizontalPadding: 16.0,
          strokeColor: disableBorder ? null : SFAppColor.black,
          style: TextStyle(
            color: SFAppColor.dimGrey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        );
      default:
        return Container();
    }
  }
}
