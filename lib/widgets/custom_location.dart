part of 'widgets.dart';

class CustomLocation extends StatelessWidget {
  const CustomLocation({
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
