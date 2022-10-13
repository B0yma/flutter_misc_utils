import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:misc_utils/ui-common/shimmer_image.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit boxFit;
  final CacheManager? cacheManager;

  const CustomNetworkImage({
    Key? key,
    required this.imageUrl,
    this.boxFit = BoxFit.cover,
    this.cacheManager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String adaptedUrl = imageUrl;
    if (adaptedUrl.endsWith(".svg")) {
      return ScalableImageWidget.fromSISource(
        onLoading: (BuildContext context) => const ShimmerImage(),
        si: ScalableImageSource.fromSvgHttpUrl(Uri.parse(adaptedUrl)),
      );
    }
    return CachedNetworkImage(
      imageUrl: adaptedUrl,
      width: double.infinity,
      cacheManager: cacheManager,
      placeholder: (context, s) => const ShimmerImage(),
      fit: boxFit,
      errorWidget: (context, url, error) {
        return const ShimmerImage();
      },
    );
  }
}
