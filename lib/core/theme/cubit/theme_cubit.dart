import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter/material.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode newMode) {
    emit(newMode);
  }

  @override
  ThemeMode fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['mode'] as int];
  }

  @override
  Map<String, dynamic> toJson(ThemeMode state) {
    return {'mode': ThemeMode.values.indexOf(state)};
  }
}
