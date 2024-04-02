import 'package:flutter/material.dart';
import 'package:new_base_with_socket/widgets/loading_overlay.dart';

bool isLoading = false;

Future<bool?> showLoading(BuildContext context,
    {bool dismissAble = true, bool useRootNavigator = false}) async {
  if (isLoading) return true;
  isLoading = true;
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: useRootNavigator,
    builder: (c) {
      return WillPopScope(
        onWillPop: () async {
          return dismissAble;
        },
        child: buildLoading(
          true,
          bgColor: Colors.transparent,
        ),
      );
    },
  );
}

void dismissLoading(BuildContext context, {bool useRootNavigator = false}) {
  if (!isLoading) return;
  isLoading = false;
  if (Navigator.of(context, rootNavigator: useRootNavigator).canPop()) {
    Navigator.of(context, rootNavigator: useRootNavigator).pop();
  }
}
