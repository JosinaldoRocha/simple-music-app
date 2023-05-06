import 'package:flutter/material.dart';
import '../colors/color_schemes.g.dart';

class SimpleMusicTheme {
  static ThemeData getTheme() {
    return ThemeData(
      // Defina as cores do tema
      useMaterial3: true,
      colorScheme: lightColorScheme,
      // ... outras configurações do tema
      appBarTheme: AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: lightColorScheme.onPrimary,
        ),
        backgroundColor: lightColorScheme.primary,
      ),
    );
  }
}

// class MeuTema extends ThemeData {
//   MeuTema()
//       : super(
//           // Define a cor primária
//           primaryColor: const Color(0xFFFF0000), // Vermelho

//           // Define a cor secundária
//           accentColor: const Color(0xFF00FF00), // Verde

//           // Outras propriedades do tema
//           // ...
//         );
// }

