part of 'widgets.dart';

class CustomSliderCard extends StatelessWidget {
  final double? width;
  final double? height;
  final String? imagePath;
  final String? slug;
  final String? name;
  final String? location;
  final String? imageFlag;
  final VoidCallbackAction? onPress;
  final String? destination;
  final bool? isMark;
  final double? ratting;
  const CustomSliderCard(
      {super.key,
      this.imagePath,
      this.slug,
      this.name,
      this.location,
      this.imageFlag,
      this.onPress,
      this.destination,
      this.isMark,
      this.ratting,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerImage(
          imageUrl:
              'https://i.pinimg.com/564x/a1/5c/ef/a15cef4fbf60dbe4d79157a003e08528.jpg',
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          borderRadius: BorderRadius.circular(32),
          height: height ?? MediaQuery.of(context).size.height * 0.7,
          width: width ?? MediaQuery.of(context).size.width * 0.7,
        ),
        Container(
          height: height ?? MediaQuery.of(context).size.height * 0.7,
          width: width ?? MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        const Positioned(
          top: 32,
          right: 16,
          child: CustomLocation(),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.12,
          left: MediaQuery.of(context).size.width * 0.05,
          child: VStack(
            [
              'Recommended'
                  .text
                  .xs
                  .textStyle(const TextStyle(color: AppColors.colorWhite))
                  .make(),
              'Aragua'
                  .text
                  .xl4
                  .bold
                  .textStyle(const TextStyle(color: AppColors.colorWhite))
                  .make(),
              'Venezuela'
                  .text
                  .xs
                  .textStyle(const TextStyle(color: AppColors.colorWhite))
                  .make(),
              '15+ Destination'
                  .text
                  .xs
                  .textStyle(const TextStyle(color: AppColors.colorWhite))
                  .make()
            ],
          ),
        ),
        Positioned(
          bottom: 23,
          right: 23,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            width: MediaQuery.of(context).size.width * 0.23,
            decoration: BoxDecoration(
              color: AppColors.accentColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
                child: Icon(
              Icons.arrow_right_alt_rounded,
              color: AppColors.accentColor,
            )),
          ),
        )
      ],
    );
  }
}
