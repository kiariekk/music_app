import 'package:flutter/material.dart';

class ShadowImage extends StatelessWidget {
  const ShadowImage(
      {required this.imageProvider, this.size = const Size(70, 70), Key? key})
      : super(key: key);

  final ImageProvider imageProvider;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image(
          image: imageProvider,
        ),
      ),
    );
  }
}
