import 'package:flutter/material.dart';
import 'package:flutter_provider_counter_example/example_sec/progress_value_provider.dart';
import 'package:flutter_provider_counter_example/example_sec/video_progress.dart';
import 'package:provider/provider.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var _sliderValue = 0.1;

  void _onValueChanged(double val) {
    Provider.of<ProgressValue>(context, listen: false).progress = val;
  }

  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress;

    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Slider(
        value: progress,
        onChanged: _onValueChanged,
      ),
    );
  }
}
