import 'dart:io';
import 'package:flutter/widgets.dart';
import './breakpoint_and_props.dart';
import './liquid_platform.dart';
import 'package:flutter/foundation.dart';

class Adaptive<T> {
  final List<BreakpointAndProps> _breakpointAndProps;

  late LiquidPlatform _platform;

  Adaptive(this._breakpointAndProps) {
    _resolvePlatforms();
  }

  void _resolvePlatforms() {
    if (kIsWeb) {
      _platform = LiquidPlatform.web;
    } else if (Platform.isMacOS) {
      _platform = LiquidPlatform.macos;
    } else if (Platform.isWindows) {
      _platform = LiquidPlatform.windows;
    } else if (Platform.isLinux) {
      _platform = LiquidPlatform.linux;
    } else if (Platform.isAndroid) {
      _platform = LiquidPlatform.android;
    } else if (Platform.isIOS) {
      _platform = LiquidPlatform.ios;
    }
  }

  T resolve(BuildContext context) {
    BreakpointAndProps breakpointAndProp = _breakpointAndProps.firstWhere(
        (breakpointAndProp) =>
            breakpointAndProp.breakpoint.platform == _platform);

    return MediaQuery.of(context).size.width > breakpointAndProp.breakpoint.xl
        ? breakpointAndProp.xl
        : MediaQuery.of(context).size.width > breakpointAndProp.breakpoint.lg
            ? breakpointAndProp.lg
            : MediaQuery.of(context).size.width >
                    breakpointAndProp.breakpoint.md
                ? breakpointAndProp.md
                : MediaQuery.of(context).size.width >
                        breakpointAndProp.breakpoint.sm
                    ? breakpointAndProp.sm
                    : breakpointAndProp.xs;
  }
}
