import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const appName = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w900,
    color: AppColors.accent,
  );

  static const title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const subtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.secondaryText,
  );

  static const buttonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const oauthButtonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );

  static const switchText = TextStyle(
    fontSize: 16,
    color: AppColors.primaryText,
  );

  static const switchLink = TextStyle(
    fontWeight: FontWeight.w600,
    color: AppColors.accent,
  );
}
