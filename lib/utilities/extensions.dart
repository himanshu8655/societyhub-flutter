import 'package:flutter/material.dart';

extension numberExtension on double {
  /// Leaves given height of space
  Widget get height => SizedBox(height: this.toDouble());

  /// Leaves given width of space
  Widget get width => SizedBox(width: this.toDouble());
}
