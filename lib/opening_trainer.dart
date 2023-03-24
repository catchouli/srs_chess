import 'dart:developer' as developer;
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'database.dart';

/// The Opening Trainer widget.
class OpeningTrainerRoute extends StatelessWidget {
    const OpeningTrainerRoute({super.key});

    /// The build function for this route.
    @override
    Widget build(BuildContext context) {
        stdout.writeln('Building opening trainer widget');
        return Scaffold(
            appBar: AppBar(title: Text('Opening Trainer')),
            body: Center(
                child: Text('The opening trainer'),
            ),
        );
    }
}
