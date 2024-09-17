part of 'widgets.dart';

class CustomSliderCard extends StatelessWidget {
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
      this.ratting});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerImage(
          imageUrl:
              'https://i.pinimg.com/originals/6d/ba/5b/6dba5b390264c4aa0f5f376931848fd9.jpg',
          fit: BoxFit.cover,
          borderRadius: BorderRadius.circular(32),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        const Positioned(
          top: 32,
          right: 16,
          child: BaseLocation(),
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
              color: Colors.orange,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(child: Icon(Icons.arrow_right_alt_rounded)),
          ),
        )
      ],
    );
  }
}

class BaseLocation extends StatelessWidget {
  const BaseLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.pin_drop_rounded,
          color: AppColors.colorWhite,
          size: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.20,
          child: 'Colonia Tovar, Venezuela'
              .text
              .textStyle(const TextStyle(color: AppColors.colorWhite))
              .xs
              .end
              .make(),
        ),
      ],
    );
  }
}
