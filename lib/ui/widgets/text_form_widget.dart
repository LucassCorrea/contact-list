import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final bool visibility;
  final String? Function(String? value)? validator;
  final bool autofocus;

  const TextFormWidget({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
    this.visibility = false,
    this.autofocus = false,
  });

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  var obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          controller: widget.controller,
          cursorColor: const Color(0xff5d9dff),
          obscureText: obscureText,
          validator: widget.validator,
          autofocus: widget.autofocus,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            suffixIcon: widget.visibility
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: obscureText
                        ? const Icon(
                            Icons.visibility_off_rounded,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility_rounded,
                            color: Color(0xff5d9dff),
                          ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
