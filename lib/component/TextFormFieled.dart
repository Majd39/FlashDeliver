import 'package:flutter/material.dart';

class TextFormFieled extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Color? fillColor;
  final double? width;
  final double? height;
void Function(String)? onChanged;
   TextFormFieled({
    Key? key,
    this.labelText,
    this.hintText,
    this.fillColor,
    this.width,
    this.height,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: fillColor ?? Colors.transparent.withOpacity(0.5), // Use fillColor if provided, default to orange
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: TextFormField(
          style: const TextStyle(color: Colors.white),
onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.white),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white), // Uncommented this line for hint color
            fillColor: fillColor ?? Colors.grey.withOpacity(0.2), // Set the background color for the input field
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
