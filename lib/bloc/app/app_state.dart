import 'package:flutter/material.dart';

class AppState {
  static String accessToken;

  final String language;
  final ThemeData theme;
  final String token;

  // final User me;
  final bool remember;
  Map zipcodeDB;

  AppState(
      {this.language, this.token, this.theme, this.remember, this.zipcodeDB});

  void fillDatta({zipcodeDB}) {
    this.zipcodeDB = zipcodeDB;
  }

  AppState copyWith(
      {String language, String token, ThemeData theme, bool remember}) {
    AppState.accessToken = token ?? this.token;
    return AppState(
      token: token ?? this.token,
      theme: theme ?? this.theme,
      language: language ?? this.language,
      remember: remember ?? this.remember,
      zipcodeDB: zipcodeDB ?? this.zipcodeDB,
    );
  }

  AppState switchLanguage(String language) => copyWith(language: language);

  AppState switchTheme(ThemeData theme) => copyWith(theme: theme);
}
