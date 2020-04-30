import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String buttonTitle;
  final Function() buttonDidTap;

  BlueButton(this.buttonTitle, this.buttonDidTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.buttonTitle),
        onPressed: this.buttonDidTap,
      ),
    );
  }
}
