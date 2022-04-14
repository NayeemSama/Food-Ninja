import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {

  final String label;
  final int mode;

  const TextFieldWidget({Key? key,required this.label, required this.mode}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  var flag = true;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18))),
      elevation: 20,
      shadowColor: Color(0x445A6CEA),
      child: TextFormField(
        // controller: emailController,

        textInputAction: widget.mode==3?null:TextInputAction.next,
        keyboardType: widget.mode==3?TextInputType.number:TextInputType.emailAddress,
        maxLength: widget.mode==3?6:20,

        validator: widget.mode==3?
            (value) {if (value!.isEmpty) {
            return "Enter password";
          } else if (value.length < 6) {return "Password length at least 6 letters";}return null;}
            :
            (value) {if (value!.isEmpty) {
            return "Enter ${widget.label}";
          } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
            return "Enter valid ${widget.label} please";
          }return null;},

        textAlignVertical: TextAlignVertical.center,
        cursorHeight: 20,
        style: TextStyle(fontSize: 15),

        decoration: InputDecoration(

          isDense: true,
          counterText: '',
          suffixIcon: widget.mode==3?IconButton(
              splashColor: Colors.transparent,
              onPressed: () {
                flag = !flag;
                setState(() {});
              },
              icon: flag
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(Icons.visibility_outlined)):null,
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          ),
          hintText: widget.label,
          hintStyle: TextStyle(fontSize: 20),
          alignLabelWithHint: false,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            borderSide: BorderSide(width: 1.0, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
          ),
          filled: true,
          fillColor: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Colors.grey.shade900,
        ),
      ),
    );
  }
}
