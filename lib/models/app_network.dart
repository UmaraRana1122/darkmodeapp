import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatelessWidget {
  final String? image;
  final double? height;
  final double? width;
  final Widget? errorWidget;
  final BoxFit? fit;

  const AppNetworkImage({
    Key? key,
    this.image,
    this.height,
    this.width,
    this.errorWidget,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
      placeholder: (context, url) =>
          Center(child: Image.asset('assets/images/load.gif')),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Icon(
            Icons.error,
            color: Colors.red,
          ),
      imageUrl: image ?? '',
    );
  }
}
