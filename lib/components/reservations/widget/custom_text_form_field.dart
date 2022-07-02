
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget{

  final String _txtLabel;
  final String _txtHint;
  final IconData _icon;

  const CustomTextFormField({
    Key? key,
    required String txtLabel,
    required String txtHint,
    required IconData icon
  }): _txtLabel=txtLabel, _txtHint=txtHint, _icon=icon, super(key:key);

  @override
  Widget build(BuildContext context){
    return TextFormField(
      //controller: _controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: _txtHint,
            label: Text(_txtLabel),
            prefixIcon: Icon(_icon)
        ),
        validator:(value){
          if(value == null || value.isEmpty){
            return "Rquerido";
          }
        }
    );
  }

}