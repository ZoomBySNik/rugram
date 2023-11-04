import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkImageComponent extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const CachedNetworkImageComponent({
    required this.url,
    this.fit,
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, _) => ImagePlaceHolder(
        width: width,
        height: height,
      ),
      errorWidget: (context, _, __) => ImagePlaceHolder(
        width: width,
        height: height,
      ),
    );
  }
}

class ImagePlaceHolder extends StatelessWidget {
  final double? width;
  final double? height;

  const ImagePlaceHolder({
    this.width,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const baseColor = Colors.black26;
    const highlightColor = Colors.white;

    return Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        color: baseColor,
        height: height,
        width: width,
      ),
    );
  }
}
