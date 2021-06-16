import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopform_widgets/constants/sf_product_constants.dart';
import 'package:shopform_widgets/content_space/sf_content_space.dart';
import 'package:shopform_widgets/icons/sf_empty_live_stream_icon.dart';
import 'package:shopform_widgets/loading_effects/sf_loading_container.dart';
import 'package:shopform_widgets/utils/sf_app_color.dart';

class SFLoadingEffect extends StatelessWidget {
  final Widget child;

  SFLoadingEffect({@required this.child}) : assert(child != null);

  factory SFLoadingEffect.consumerProductItem() {
    final child = Container(
      height: 300,
      width: 128,
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoadingItem(height: 192),
          SFContentSpace.vertical12(),
          LoadingItem(height: 14),
          SFContentSpace.vertical2(),
          LoadingItem(height: 14),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.productItemInDetailList({@required double screenWidth}) {
    final itemWidth = (screenWidth - 48)/2;
    final child = Container(
      width: itemWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoadingItem(height: itemWidth/SFProductConstants.imageRatio),
          SFContentSpace.vertical14(),
          LoadingItem(height: 12, width: 100, radius: 6,),
          SFContentSpace.vertical4(),
          LoadingItem(height: 12, width: double.maxFinite, radius: 6,),
          SFContentSpace.vertical4(),
          LoadingItem(
            height: 12,
            width: 60,
            radius: 6,
          ),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  static Widget postGridLoadingItem({@required double itemWidth}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SFLoadingContainer(radius: 4, height: itemWidth, width: itemWidth),
        Center(child: SFEmptyLiveStreamIcon()),
      ],
    );
  }

  factory SFLoadingEffect.consumerCollectionItem() {
    final child = Container(
      height: 168,
      width: 336.0,
      padding: EdgeInsets.only(right: 20),
      child: LoadingItem(height: 168),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.storeSelectProductItemForSetupStream() {
    final child = Column(
      children: [
        AspectRatio(aspectRatio: 161 / 242, child: LoadingItem()),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            children: [
              Expanded(
                child: LoadingItem(height: 16),
                flex: 4,
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
        SFContentSpace.vertical4(),
        Row(
          children: [
            Expanded(
              child: LoadingItem(height: 16),
            ),
            Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.collectionItemInDetailList() {
    final child = Container(
      padding: const EdgeInsets.only(bottom: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 2,
              color: Color.fromRGBO(0, 0, 0, 0.25))
        ],
      ),
      child: Column(
        children: [
          LoadingItem(height: 168),
          SFContentSpace.vertical2(),
          LoadingItem(height: 50),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.collectionItemInStoreProfile() {
    final child = Container(
      child: Column(
        children: [
          LoadingItem(height: 168),
          SFContentSpace.vertical2(),
          LoadingItem(height: 30),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.consumerShopByBrandsItem() {
    final child = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
            child: LoadingItem(
              height: 116,
              width: 116,
            )),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Container(
            height: 20,
            width: 60,
          ),
        )
      ],
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.consumerShopByBrandsItemInDetailList() {
    final child = Container(
      padding: const EdgeInsets.only(bottom: 52),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: LoadingItem(
                      height: 116,
                      width: 116,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: LoadingItem(
                      width: 116,
                      height: 116,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  static Widget liveStream() {
    final child = Material(
      borderRadius: BorderRadius.circular(4),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SFLoadingEffect(
            child: Container(
              height: 224,
              width: 152,
              color: SFAppColor.white,
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            right: 8,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  clipBehavior: Clip.antiAlias,
                  type: MaterialType.circle,
                  color: SFAppColor.white,
                  child: SizedBox(
                    width: 40,
                    height: 40,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 16,
                        color: SFAppColor.white,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                      flex: 1,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
    return child;
  }

  factory SFLoadingEffect.coinRewardHistoryLoadingItem() {
    return SFLoadingEffect(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 19,
                      color: SFAppColor.white,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                    flex: 2,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 16,
                        color: SFAppColor.white,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  factory SFLoadingEffect.productRewardLoadingItem() {
    return SFLoadingEffect(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                width: 42,
                height: 42,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: SFAppColor.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 16,
                              color: SFAppColor.white,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 16,
                                color: SFAppColor.white,
                              ),
                            ),
                            Expanded(
                              child: SizedBox(),
                              flex: 3,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  factory SFLoadingEffect.notificationItem() {
    return SFLoadingEffect(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: SFAppColor.dividerGray))),
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 38,
                height: 38,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: SFAppColor.white,
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              SFContentSpace.horizontal18(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 10,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: SFAppColor.white,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    SFContentSpace.vertical2(),
                    Container(
                      width: 50,
                      height: 10,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: SFAppColor.white,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    )
                  ],
                ),
              ),
              SFContentSpace.horizontal18(),
              Container(
                width: 36,
                height: 36,
                color: SFAppColor.white,
              ),
            ],
          ),
        ));
  }

  factory SFLoadingEffect.consumerProfileReferralCode() {
    final child = Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SFContentSpace.vertical52(),
          LoadingItem(
            height: 180,
            width: 180,
          ),
          SFContentSpace.vertical26(),
          LoadingItem(height: 20),
          SFContentSpace.vertical32(),
          LoadingItem(height: 140),
          SFContentSpace.vertical26(),
          LoadingItem(height: 20),
          SFContentSpace.vertical26(),
        ],
      ),
    );
    return SFLoadingEffect(
      child: child,
    );
  }

  factory SFLoadingEffect.orderGroupItem() {
    Widget _buildLoading(double width) {
      return Container(
        height: 18,
        width: width,
        color: SFAppColor.white,
      );
    }

    return SFLoadingEffect(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 36, top: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLoading(200),
                    SFContentSpace.vertical4(),
                    _buildLoading(200),
                    SFContentSpace.vertical14(),
                    _buildLoading(100),
                    SFContentSpace.vertical8(),
                    _buildLoading(80),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLoading(80),
                      SFContentSpace.vertical14(),
                      _buildLoading(50),
                    ],
                  )),
            ],
          ),
        ));
  }

  factory SFLoadingEffect.selectBrandItemSocialPost() {
    final child = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: SizedBox(
            width: 48,
            height: 48,
          ),
          clipBehavior: Clip.antiAlias,
          color: SFAppColor.white,
          type: MaterialType.circle,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 16,
                        color: SFAppColor.white,
                      ),
                      flex: 2,
                    ),
                    Expanded(child: SizedBox.shrink()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: 16,
                        color: SFAppColor.white,
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      child: SizedBox.shrink(),
                      flex: 3,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: SFAppColor.white,
                        height: 14,
                      ),
                    ),
                    Expanded(
                      child: SizedBox.shrink(),
                      flex: 3,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
    return SFLoadingEffect(child: child);
  }

  factory SFLoadingEffect.productCollectionItem() {
    final child = Column(
      children: [
        AspectRatio(
          aspectRatio: 133.98 / 202.38,
          child: Container(
            color: SFAppColor.whisperGray,
          ),
        ),
        SFContentSpace.vertical8(),
        Row(
          children: [
            Expanded(
              child: Container(
                color: SFAppColor.white,
                height: 16,
              ),
              flex: 3,
            ),
            Expanded(
              child: SizedBox(),
              flex: 2,
            ),
          ],
        ),
      ],
    );
    return SFLoadingEffect(child: child);
  }

  factory SFLoadingEffect.transactionHistoryItem() {
    final child = Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            color: SFAppColor.white,
          ),
          SFContentSpace.horizontal8(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 10,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: SFAppColor.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SFContentSpace.vertical8(),
                Container(
                  width: 150,
                  height: 10,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: SFAppColor.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SFContentSpace.vertical8(),
                Container(
                  width: 100,
                  height: 10,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: SFAppColor.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return SFLoadingEffect(child: child);
  }

  factory SFLoadingEffect.postsTaggedProductWidget() {
    final child = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              buildText(width: 50),
              Spacer(),
              buildText(width: 40),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SFContentSpace.vertical24(),
          SizedBox(
            height: 163,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final itemWidth = 123.0;
                return SizedBox(
                  width: itemWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildContainer(
                        width: itemWidth,
                        height: itemWidth,
                      ),
                      SFContentSpace.vertical10(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          buildContainer(width: 30, height: 30, radius: 15),
                          SFContentSpace.horizontal4(),
                          buildText(width: 50)
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: 3,
              separatorBuilder: (_, __) => SizedBox(
                width: 16,
              ),
            ),
          )
        ],
      ),
    );
    return SFLoadingEffect(child: child);
  }

  factory SFLoadingEffect.selectProductVariantBottomSheet() {
    Widget _separator() {
      return Container(
        height: 1,
        color: SFAppColor.dividerGray,
      );
    }

    final child = Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 16, left: 16),
                child: buildContainer(
                  height: 100,
                  width: 71,
                ),
              ),
              SFContentSpace.horizontal12(),
              Spacer()
            ],
          ),
          ...List.generate(2, (index) {
            return Column(
              children: [
                _separator(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //option name
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: buildText(width: 50),
                            ),
                            SFContentSpace.vertical8(),
                            //option chips
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              children: List.generate(3, (valueIndex) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    buildContainer(
                                        width: 70, height: 26, radius: 5),
                                  ],
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
    return SFLoadingEffect(child: child);
  }

  static Widget buildText({double width = 100}) {
    return Container(
      width: width,
      height: 10,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: SFAppColor.white,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }

  static Widget buildContainer(
      {@required double width, @required double height, double radius = 0}) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: SFAppColor.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: child,
    );
  }
}

/// To emulating a real widget
class LoadingItem extends StatelessWidget {
  final double height;
  final double width;
  final double radius;

  const LoadingItem({Key key, this.height, this.width, this.radius = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius)
    ), height: height, width: width);
  }
}
