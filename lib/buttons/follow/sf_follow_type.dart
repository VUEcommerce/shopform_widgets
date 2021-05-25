enum SFFollowType { fetching, unfollowing, following }

extension FollowTypeExtension on SFFollowType {
  static SFFollowType? fromValue(bool value) {
    switch (value) {
      case true:
        return SFFollowType.following;
      case false:
        return SFFollowType.unfollowing;
    }
    return null;
  }
}
