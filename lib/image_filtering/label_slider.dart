import 'package:flutter/material.dart';

class LabelSlider extends StatelessWidget {
  final String label;
  final double value;
  final Function(double) onChanged;
  final Color color;
  final Color i_a_c;
  final Color a_c;
  const LabelSlider({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.color,
    required this.i_a_c,
    required this.a_c
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label,style: TextStyle(fontSize: 18,color: color),textAlign: TextAlign.center,),
        Slider(
            activeColor: i_a_c,
            inactiveColor: a_c,
            min: 0,
            max: 255.0,
            divisions: 255,
            label: value.round().toString(),
            value: value,
            onChanged: onChanged
        ),
      ],
    );
  }
}

