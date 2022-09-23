import 'package:flutter/material.dart';
import 'package:flutter_provider_counter_example/example_sec/progress_value_provider.dart';
import 'package:provider/provider.dart';

class VideoProgress extends StatelessWidget {
  VideoProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress * 100;

    return Center(
      child: Text(
        'Video Progress\n${progress.toStringAsFixed(2)}',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
