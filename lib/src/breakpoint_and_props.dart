import '../flutter_liquid.dart';

class BreakpointAndProps<T> {
  final Breakpoint breakpoint;
  final T xs;
  final T sm;
  final T md;
  final T lg;
  final T xl;

  BreakpointAndProps._internal(this.breakpoint,
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl});

  factory BreakpointAndProps(Breakpoint breakpoint,
      {required T xs,
      required T sm,
      required T md,
      required T lg,
      required T xl}) {
    return BreakpointAndProps._internal(breakpoint,
        xs: xs, sm: sm, md: md, lg: lg, xl: xl);
  }
}
