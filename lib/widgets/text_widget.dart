import 'package:flutter/material.dart';

Padding textWidget(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 16, left: 24, bottom: 8),
    child: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall,
    ),
  );
}
