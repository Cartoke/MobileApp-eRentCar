
import 'package:flutter/material.dart';

class CustomDatePickerFormField extends StatelessWidget{

  final String _txtLabel;
  final TextEditingController _controller;
  final VoidCallback _callback;

  const CustomDatePickerFormField({
    Key? key,
    required String txtLabel,
    required TextEditingController controller,
    required VoidCallback callback
  }): _txtLabel=txtLabel, _controller=controller, _callback=callback, super(key: key);

  @override
  Widget build(BuildContext context){
    return TextFormField(
        controller: _controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(_txtLabel),
          prefixIcon: const Icon(Icons.date_range)
        ),
        validator:(value){
          if(value == null || value.isEmpty){
            return "Requeridoo";
          }
          return null;
        },
        onTap: _callback
    );
  }
}