import 'package:liquid/liquid.dart';

class Breakpoints {
  static final Breakpoint androidBreakpoint =
      Breakpoint.android(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint iosBreakpoint =
      Breakpoint.iOS(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint windowsBreakpoint =
      Breakpoint.windows(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint macOSBreakpoint =
      Breakpoint.macOS(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint linuxBreakpoint =
      Breakpoint.linux(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
  static final Breakpoint webBreakpoint =
      Breakpoint.web(xs: 576, sm: 576, md: 768, lg: 992, xl: 1200);
}
