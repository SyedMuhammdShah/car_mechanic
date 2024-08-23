import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  final String label;
  final String hintText;
  final Color borderColor;
  final Color backgroundColor;
  final TextEditingController? controller;

  CustomTextForm({
    required this.label,
    required this.hintText,
    this.borderColor = Colors.grey, // Default border color
    this.backgroundColor = Colors.transparent, // Default background color
    this.controller,
  });

  @override
  _CustomTextFormState createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _labelAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _labelAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        color: widget.backgroundColor,
      ),
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: Stack(
        children: [
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            onTap: () {
              _controller.forward();
            },
            onChanged: (value) {
              if (value.isEmpty) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
          ),
          Positioned(
            left: 16.0,
            top: _labelAnimation.value * -16.0,
            child: AnimatedOpacity(
              opacity: _labelAnimation.value,
              duration: Duration(milliseconds: 200),
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
