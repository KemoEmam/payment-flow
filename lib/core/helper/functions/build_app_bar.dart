import 'package:flutter/material.dart';

import '../../themes/styles/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {String? title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(
        Icons.arrow_back,
        size: 30,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
    title: Text(
      title ?? '',
      style: AppTextStyles.interMedium25,
    ),
  );
}
