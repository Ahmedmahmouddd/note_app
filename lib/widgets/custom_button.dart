import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[600]),
        child: const Center(
          child: Text(
            'Save',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
