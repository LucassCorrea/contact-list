import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final bool isSucess;
  final String title;
  final String description;
  final String label;
  final void Function()? onPressed;

  const PageWidget({
    super.key,
    required this.isSucess,
    required this.title,
    required this.description,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isSucess
                        ? const Icon(
                            Icons.check_circle_outline_rounded,
                            color: Colors.green,
                            size: 60,
                          )
                        : const Icon(
                            Icons.close_rounded,
                            color: Colors.red,
                            size: 60,
                          ),
                    const SizedBox(height: 5),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      style: TextStyle(
                        fontSize: 18,
                        color: isSucess ? Colors.green : Colors.red,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(label),
              )
            ],
          ),
        ),
      ),
    );
  }
}
