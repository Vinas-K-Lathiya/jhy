import 'package:flutter/material.dart';

class cons_wid {
  static constext600({
    String? Tex,
    required double siz,
    required Color colo,
  }) {
    return Text(
      '${Tex}',
      style: TextStyle(fontSize: siz, color: colo, fontWeight: FontWeight.w600),
    );
  }

  static constext500({
    String? Tex,
    required double siz,
    required Color colo,
  }) {
    return Text(
      '${Tex}',
      style: TextStyle(fontSize: siz, color: colo, fontWeight: FontWeight.w500),
    );
  }
}
