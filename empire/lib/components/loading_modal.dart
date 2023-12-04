import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingModal extends StatelessWidget {
  const LoadingModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(126, 255, 255, 255),
      child: const Center(
        child: SpinKitFadingCircle(
          color: const Color(0xFFF5D70A),
          size: 50.0,
        ),
      ),
    );
  }
}
