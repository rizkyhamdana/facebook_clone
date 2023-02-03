import 'package:flutter/material.dart';

class VerticalSpacing extends SizedBox {
  const VerticalSpacing({super.key, double height = 16.0})
      : super(height: height);
}

class HorizontalSpacing extends SizedBox {
  const HorizontalSpacing({super.key, double width = 16.0})
      : super(width: width);
}
