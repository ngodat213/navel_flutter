import 'package:flutter/material.dart';
import 'package:freal_flutter/widgets/elevated_container.dart';
import 'package:freal_flutter/core/constants/constants.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ElevatedContainer(
        padding: EdgeInsets.all(AppValues.screen_margin),
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
