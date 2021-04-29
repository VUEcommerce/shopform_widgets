import 'package:flutter/material.dart';

class SFContentSpace extends StatelessWidget {
  factory SFContentSpace.horizontal5() => const SFContentSpace._internal(width: 5);

  factory SFContentSpace.horizontal4() => const SFContentSpace._internal(width: 4);

  factory SFContentSpace.horizontal8() => const SFContentSpace._internal(width: 8);

  factory SFContentSpace.horizontal12() =>
      const SFContentSpace._internal(width: 12);

  factory SFContentSpace.horizontal10() =>
      const SFContentSpace._internal(width: 10);

  factory SFContentSpace.horizontal16() =>
      const SFContentSpace._internal(width: 16);

  factory SFContentSpace.horizontal14() =>
      const SFContentSpace._internal(width: 14);

  factory SFContentSpace.horizontal18() =>
      const SFContentSpace._internal(width: 18);

  factory SFContentSpace.horizontal20() =>
      const SFContentSpace._internal(width: 20);

  factory SFContentSpace.horizontal22() =>
      const SFContentSpace._internal(width: 22);

  factory SFContentSpace.horizontal28() =>
      const SFContentSpace._internal(width: 28);

  factory SFContentSpace.horizontal24() =>
      const SFContentSpace._internal(width: 24);

  factory SFContentSpace.horizontal32() =>
      const SFContentSpace._internal(width: 32);

  factory SFContentSpace.horizontal60() =>
      const SFContentSpace._internal(width: 60);

  factory SFContentSpace.vertical4() => const SFContentSpace._internal(height: 4);

  factory SFContentSpace.vertical2() => const SFContentSpace._internal(height: 2);

  factory SFContentSpace.vertical14() => const SFContentSpace._internal(height: 14);

  factory SFContentSpace.vertical5() => const SFContentSpace._internal(height: 5);

  factory SFContentSpace.vertical8() => const SFContentSpace._internal(height: 8);

  factory SFContentSpace.vertical10() => const SFContentSpace._internal(height: 10);

  factory SFContentSpace.vertical12() => const SFContentSpace._internal(height: 12);

  factory SFContentSpace.vertical16() => const SFContentSpace._internal(height: 16);

  factory SFContentSpace.vertical20() => const SFContentSpace._internal(height: 20);

  factory SFContentSpace.vertical18() => const SFContentSpace._internal(height: 18);

  factory SFContentSpace.vertical22() => const SFContentSpace._internal(height: 22);

  factory SFContentSpace.vertical24() => const SFContentSpace._internal(height: 24);

  factory SFContentSpace.vertical26() => const SFContentSpace._internal(height: 26);

  factory SFContentSpace.vertical28() => const SFContentSpace._internal(height: 28);

  factory SFContentSpace.vertical32() => const SFContentSpace._internal(height: 32);

  factory SFContentSpace.vertical44() => const SFContentSpace._internal(height: 44);

  factory SFContentSpace.vertical40() => const SFContentSpace._internal(height: 40);

  factory SFContentSpace.vertical100() =>
      const SFContentSpace._internal(height: 100);

  factory SFContentSpace.vertical136() =>
      const SFContentSpace._internal(height: 136);

  factory SFContentSpace.vertical36() => const SFContentSpace._internal(height: 36);

  factory SFContentSpace.vertical52() => const SFContentSpace._internal(height: 52);

  factory SFContentSpace.vertical80() => const SFContentSpace._internal(height: 80);

  factory SFContentSpace.vertical76() => const SFContentSpace._internal(height: 76);

  final double width;
  final double height;

  const SFContentSpace._internal({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
