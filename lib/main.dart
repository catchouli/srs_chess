import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

import 'main_menu.dart';

/// The application name.
const String _applicationName = 'ChessRS';

/// Main entry point.
void main() {
    runApp(const SrsChess());
}

/// Our main application widget.
class SrsChess extends StatelessWidget {
    const SrsChess({super.key});

    /// The build function for our main application widget.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: _applicationName,
            theme: ThemeData(
                brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
            ),
            themeMode: ThemeMode.system,
            home: const MainMenu(title: _applicationName),
        );
    }
}
