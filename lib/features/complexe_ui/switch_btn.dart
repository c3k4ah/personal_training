import 'dart:math';

import 'package:flutter/material.dart';

class SwitchBtn extends StatefulWidget {
  const SwitchBtn({super.key});

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  double initialPosition = 0.0;
  bool isVertical = true;
  Size size = const Size(50, 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SwitchModeButton(
          buttonSize: 100,
          value: true,
          onTap: (value) {
            print(value);
          },
        ),
      ),
    );
  }
}

class SwitchModeButton extends StatefulWidget {
  final double buttonSize;
  final bool? isVertical;
  final bool value;
  final Function(bool value) onTap;
  const SwitchModeButton({
    super.key,
    required this.buttonSize,
    this.isVertical,
    required this.onTap,
    required this.value,
  });

  @override
  State<SwitchModeButton> createState() => _SwitchModeButtonState();
}

class _SwitchModeButtonState extends State<SwitchModeButton> {
  bool isActive = false;
  Size size = const Size(50, 100);
  double initialPosition = 0.0;
  @override
  void initState() {
    isActive = widget.value;
    size = Size(widget.buttonSize, widget.buttonSize * 2);
    initialPosition = isActive ? (size.width - (size.height * 0.02)) : 0.0;
    super.initState();
  }

  void onValueCange() {
    setState(() {
      setState(() {
        initialPosition = !isActive ? (size.width - (size.height * 0.02)) : 0.0;
        isActive = !isActive;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (widget.isVertical ?? true) ? 0 : pi / 2,
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: _buildSwitch(
          size,
        ),
      ),
    );
  }

  Widget _buildSwitch(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.all(size.height * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            bottom: initialPosition,
            left: 0,
            right: 0,
            onEnd: () {},
            child: InkWell(
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {
                onValueCange();
                widget.onTap(isActive);
              },
              child: Container(
                height: size.width - (size.height * 0.02),
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
