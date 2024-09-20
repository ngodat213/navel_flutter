part of 'widgets.dart';

class ContainerImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final BorderRadiusGeometry? borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;
  const ContainerImage(
      {super.key,
      required this.imageUrl,
      this.width,
      this.height,
      this.placeholder,
      this.errorWidget,
      this.fit,
      this.borderRadius,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return imageUrl.endsWith('.svg')
        ? SvgPicture.network(
            imageUrl,
            fit: fit ?? BoxFit.contain,
            height: height,
            width: width,
          )
        : ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(0),
            child: CachedNetworkImage(
              alignment: alignment ?? Alignment.topCenter,
              width: width,
              height: height,
              imageUrl: imageUrl,
              fit: fit ?? BoxFit.contain,
              progressIndicatorBuilder: (context, imageURL, progress) =>
                  const CircularProgressIndicator().centered(),
            ),
          );
  }
}
