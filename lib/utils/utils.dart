// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_base_with_socket/core/socket/realtime_logger.dart';

extension BaseCubit on Cubit {
  @Deprecated('Replace with safeEmit')
  void emitSafe(dynamic state) {
    safeEmit(state);
  }

  void safeEmit(dynamic state) {
    try {
      emit(state);
    } on StateError catch (e) {
      if (kDebugMode) {
        dPrint("emit error $e");
      }
    }
  }
}
