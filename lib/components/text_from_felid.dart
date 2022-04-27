import 'package:flutter/material.dart';
class TextFromFiled extends StatelessWidget {
  final preicon,suficon;
  TextEditingController email;
  String label,hint;
  final type;
  bool acc;
//Icon(Icons.email_outlined)
  TextFromFiled(this.preicon, this.email, this.label, this.hint, this.type,this.acc,
      {this.suficon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: TextFormField(
        validator:  (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter mail';
          }
          return null;
        },
        obscureText: acc,
        controller: email,
        keyboardType: type,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          prefixIcon: preicon,
          labelText: label,

          suffixIcon: suficon,

          hintText:hint,
        ),
      ),
    );
  }
}
