import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Color seleccionado
final selectedColorProvider = StateProvider((ref) => 0);
