import 'package:flutter/material.dart';

class ListItemModel {
  final String text;
  final void Function(BuildContext context) onTap;

  ListItemModel(this.text, this.onTap);
}
