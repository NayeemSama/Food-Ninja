import 'package:flutter/material.dart';

class CheckBoxTextWidget extends StatefulWidget {

  final lable;

  const CheckBoxTextWidget({Key? key,this.lable}) : super(key: key);

  @override
  State<CheckBoxTextWidget> createState() => _CheckBoxTextWidgetState();
}

class _CheckBoxTextWidgetState extends State<CheckBoxTextWidget> {

  var _keepSignedIn=false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),value: _keepSignedIn, onChanged: (v){setState(() {_keepSignedIn=v!;});}),
      Text(widget.lable,style: TextStyle(color: Colors.green),)
    ]);
  }
}
