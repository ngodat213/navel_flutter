import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(32),
            image: const DecorationImage(
                image: AssetImage('lib/assets/images/thumnail.png'),
                fit: BoxFit.cover),
          ),
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
                  .textStyle(const TextStyle(color: Colors.white))
                  .make(),
              'Aragua'
                  .text
                  .xl4
                  .bold
                  .textStyle(const TextStyle(color: Colors.white))
                  .make(),
              'Venezuela'
                  .text
                  .xs
                  .textStyle(const TextStyle(color: Colors.white))
                  .make(),
              '15+ Destination'
                  .text
                  .xs
                  .textStyle(const TextStyle(color: Colors.white))
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
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.20,
          child: 'Colonia Tovar, Venezuela'
              .text
              .textStyle(const TextStyle(color: Colors.white))
              .xs
              .end
              .make(),
        ),
      ],
    );
  }
}
