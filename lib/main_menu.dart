import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'opening_trainer.dart';
import 'positional_trainer.dart';

/// Our main menu widget.
class MainMenu extends StatefulWidget {
    const MainMenu({super.key, required this.title});

    /// The title of this screen.
    final String title;

    /// Creates the widget state.
    @override
    State<MainMenu> createState() => _MainMenuState();
}

/// Our main menu widget state.
class _MainMenuState extends State<MainMenu> {
    /// Builds the widget.
    @override
    Widget build(BuildContext context) {
        final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20));

        return Scaffold(
            appBar: AppBar(
                title: Text(widget.title),
            ),
            body: Center(
                /// The main menu.
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Welcome to ChessRS, please select a training mode to continue:'),

                        // Openings menu option.
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: buttonStyle,
                            onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const OpeningTrainerRoute()));
                            },
                            child: const Text('Opening training'),
                        ),

                        // Positions menu option.
                        SizedBox(height: 20),
                        ElevatedButton(
                            style: buttonStyle,
                            onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const PositionalTrainerRoute()));
                            },
                            child: const Text('Positional training'),
                        ),
                    ],
                ),
            ),
        );
    }
}
