import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        child: SizedBox(
          width: 278,
          height: 50,
          child: Stack(
            children: [
              Image.asset('assets/images/buttonImage.png'),
              Container(
                child: isLoading
                    ? const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      )
                    : Center(
                        child: Text(
                        text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Bellota Text',
                          fontWeight: FontWeight.w700,
                        ),
                      )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
