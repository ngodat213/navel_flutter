part of 'constants.dart';

class UIHelper {
  /// Show Snack Bar
  static void showSnackBar({
    String title = 'alert',
    String? message,
  }) {}

  static void showMaterialDialog({
    String title = '',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'close',
    bool isShowConfirm = true,
    String titleConfirm = 'confirm',
    Color backgroundColor = AppColors.colorWhite,
    VoidCallback? onComfirm,
  }) {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title.tr,
            // style: ShareStyles.iosPhone
            //     .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          content: Text(
            message.tr,
            // style: ShareStyles.iosPhone.copyWith(
            //   fontWeight: FontWeight.w400,
            //   fontSize: 16,
            //   color: Colors.black,
            // ),
          ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
          actions: <Widget>[
            if (isShowClose)
              TextButton(
                onPressed: () {
                  navigator!.pop();
                },
                child: Text(
                  titleClose.tr,
                  // style: ShareStyles.iosPhone.copyWith(
                  //   fontWeight: FontWeight.w500,
                  //   fontSize: 16,
                  //   color: ShareColors.kBackgroundFB,
                  // ),
                ),
              ),
            if (isShowConfirm)
              TextButton(
                onPressed: onComfirm,
                child: Text(titleConfirm.tr),
              ),
          ],
        );
      },
    );
  }

  static void showCustomDialog({
    String title = '',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'close',
    bool isShowConfirm = true,
    String titleConfirm = 'confirm',
    Color backgroundColor = AppColors.colorWhite,
    VoidCallback? onComfirm,
  }) {
    if (GetPlatform.isIOS) {
      UIHelper.showCupertinoDialog(
          isShowClose: isShowClose,
          isShowConfirm: isShowConfirm,
          message: message,
          title: title,
          titleClose: titleClose,
          titleConfirm: titleConfirm,
          onComfirm: onComfirm);
      return;
    } else if (GetPlatform.isAndroid) {
      UIHelper.showMaterialDialog(
          isShowClose: isShowClose,
          isShowConfirm: isShowConfirm,
          titleClose: titleClose,
          titleConfirm: titleConfirm,
          title: title,
          message: message,
          backgroundColor: backgroundColor,
          onComfirm: onComfirm);
      return;
    }
  }

  static void showCupertinoDialog({
    String title = 'alert',
    String message = '',
    bool isShowClose = false,
    String titleClose = 'close',
    bool isShowConfirm = true,
    String titleConfirm = 'confirm',
    VoidCallback? onComfirm,
  }) {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(title.tr),
          content: Text(message.tr),
          actions: <Widget>[
            if (isShowClose)
              TextButton(
                onPressed: () {
                  navigator!.pop();
                },
                child: Text(
                  titleClose.tr,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            if (isShowConfirm)
              TextButton(
                onPressed: onComfirm,
                child: Text(titleConfirm.tr),
              ),
          ],
        );
      },
    );
  }
}
