import 'package:flutter/material.dart';

class SpoTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool oscuro;
  final Function()? mostrarContra;
  final String title;
  final Function(String)? onChanged;

  const SpoTextField({
    super.key,
     this.controller,
    this.oscuro = false,
    this.mostrarContra, this.onChanged,  this.title = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: oscuro,
      decoration: InputDecoration(
        hintText: title,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(4.0),
        ),
        filled: true,
        fillColor: Colors.white30,
        suffixIcon: oscuro
            ? IconButton(
                onPressed: mostrarContra,
                icon: oscuro
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ))
            : null,
      ),
      onChanged: onChanged,
    );
  }
}
