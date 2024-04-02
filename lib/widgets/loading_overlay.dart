import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/theme/utils.dart';

class IBLoading extends StatelessWidget {
  factory IBLoading.centerLoading({double height = 80}) =>
      IBLoading(height: height);

  const IBLoading({Key? key, this.height = 24}) : super(key: key);
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: height,
          height: height,
          child: CircularProgressIndicator(
            color: ThemeUtils.color.bgPrimary,
            backgroundColor: const Color.fromRGBO(223, 225, 230, 1),
            strokeWidth: 2,
          )),
    );
  }
}

Widget buildLoading(bool show, {Color? bgColor}) {
  if (show) {
    return GetIt.instance<IBLoadingOverlay>().buildLoading(
      bgColor: bgColor,
    );
  }

  return const SizedBox();
}

abstract class IBLoadingOverlay {
  Widget buildLoading({Color? bgColor});
}

class IBLoadingOverlayImpl extends IBLoadingOverlay {
  @override
  Widget buildLoading({Color? bgColor}) {
    return _IBLoadingOverlay(
      backgroundColor: bgColor,
    );
  }
}

class _IBLoadingOverlay extends StatelessWidget {
  const _IBLoadingOverlay({
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.black54,
      body: const IBLoading(height: 48),
    );
  }
}
