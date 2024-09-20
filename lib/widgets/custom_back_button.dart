part of 'widgets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColors.colorWhite,
      ),
    );
  }
}
