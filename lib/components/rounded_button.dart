import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color? btnColor;
  final Function callBack;
  // final void Function() callBack;
  final String? text;

  const RoundedButton({
    Key? key,
    this.btnColor,
    this.text,
    required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btnColor ?? Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          // onPressed: () {
          //   callBack();
          // },
          onPressed: () => callBack(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text ?? 'Not Specified',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
