import 'package:flutter/material.dart';

class QuizDialog extends StatelessWidget {
  const QuizDialog({
    super.key,
    required this.dialogBackgroundColor,
    required this.icon,
    required this.onTapFunction,
    required this.textButton,
    required this.borderButtonColor,
  });

  final Color dialogBackgroundColor;
  final Color borderButtonColor;
  final IconData icon;
  final VoidCallback onTapFunction;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: dialogBackgroundColor,
      child: SizedBox(
        width: 50,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 150,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: onTapFunction,
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: borderButtonColor,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    textButton,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
