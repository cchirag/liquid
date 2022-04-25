import 'package:flutter/material.dart';
import './breakpoint.dart';

class Responsive<T> {
  final Breakpoint _breakpoint;

  late T xs;
  late T sm;
  late T md;
  late T lg;
  late T xl;

  Responsive(this._breakpoint,
      {required this.xs,
      required this.sm,
      required this.md,
      required this.lg,
      required this.xl});

  T resolve(BuildContext context) {
    return MediaQuery.of(context).size.width > _breakpoint.xl
        ? xl
        : MediaQuery.of(context).size.width > _breakpoint.lg
            ? lg
            : MediaQuery.of(context).size.width > _breakpoint.md
                ? md
                : MediaQuery.of(context).size.width > _breakpoint.sm
                    ? sm
                    : xs;
  }
}
