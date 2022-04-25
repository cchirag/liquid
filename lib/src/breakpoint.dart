import 'package:liquid/src/liquid_platform.dart';

class Breakpoint {
  LiquidPlatform platform;

  late double xs;
  late double sm;
  late double md;
  late double lg;
  late double xl;

  Breakpoint.macOS(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.macos;

  Breakpoint.windows(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.windows;

  Breakpoint.linux(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.linux;

  Breakpoint.android(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.android;

  Breakpoint.iOS(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.ios;

  Breakpoint.web(
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl})
      : platform = LiquidPlatform.web;
}
