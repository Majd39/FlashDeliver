import 'package:flutter/material.dart';

class TextFormFieled extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Color? fillColor;
  final double? width;
  final double? height;
  final void Function()? onTap;

  const TextFormFieled({
    Key? key,
     this.labelText,
    this.hintText,
    this.fillColor,
    this.width,
    this.height,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Color(0x1B1B1A),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: TextField(
         // style: const TextStyle(color: Colors.white),
          onTap: onTap,
          decoration: InputDecoration(
            labelText: labelText,
           // labelStyle: const TextStyle(color: Colors.white),
            hintText: hintText,
            //hintStyle: const TextStyle(color: Colors.white),
            fillColor: fillColor,
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
