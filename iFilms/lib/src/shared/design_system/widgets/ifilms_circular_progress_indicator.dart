import 'package:flutter/material.dart';

import '../tokens/color_tokens.dart';

class IFilmsCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final Alignment? alignment;

  const IFilmsCircularProgressIndicator(
      {Key? key, this.alignment, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: alignment ?? Alignment.center,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(
          ColorTokens.primary,
        ),
      ),
    );
  }
}
