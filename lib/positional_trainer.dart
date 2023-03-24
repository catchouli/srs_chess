import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/// The Positional Trainer widget.
class PositionalTrainerRoute extends StatelessWidget {
    const PositionalTrainerRoute({super.key});

    /// The build function for this route.
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text('Positional Trainer')),
            body: Center(
                child: Text('The positional trainer'),
            ),
        );
    }
}
