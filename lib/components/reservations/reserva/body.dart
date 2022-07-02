

import 'package:erentcar_mobileapp/components/reservations/widget/custom_date_picker_form_field.dart';
import 'package:erentcar_mobileapp/components/reservations/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyBody extends StatefulWidget {
  MyBodyState createState() => MyBodyState();
}

class MyBodyState extends State<MyBody>{
  final TextEditingController _dateInicioController = TextEditingController();
  final TextEditingController _dateDevolucionController = TextEditingController();
  DateTime? _dateInicio;
  DateTime? _dateDevolucion;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Padding(
            padding:EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                              children: <Widget>[
                                Text("FECHA DE INICIO"),
                                Row(
                                    children: [
                                      Image.asset("lib/assets/calendario.png",
                                          height: 150),
                                      Expanded(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "Mayo 04, 1:00 PM"
                                              )
                                          )
                                      )
                                    ]
                                )
                              ]
                          )
                      )
                  ),*/
                  CustomTextFormField(
                    txtLabel: "DIRECCIÓN DE ENTREGA Y DEVOLUCIÓN",
                    txtHint: "Av. Prueba 123",
                    icon: Icons.location_on,
                  ),
                  const SizedBox(height:8.0),
                  CustomDatePickerFormField(
                      txtLabel: "FECHA DE INICIO",
                      controller:_dateInicioController,
                      callback: (){
                        pickDate(context, _dateInicio, _dateInicioController); //VACIO?
                      }
                  ),
                  const SizedBox(height:8.0),
                  CustomDatePickerFormField(
                      txtLabel: "FECHA DE DEVOLUCIÓN",
                      controller:_dateDevolucionController,
                      callback: (){
                        pickDate(context, _dateDevolucion, _dateDevolucionController); //PONE LOS 2
                      }
                  )
                ]
            )
        )
    );
  }

  Future<void> pickDate(BuildContext context, DateTime? dt, TextEditingController controller) async{
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: dt ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 1),
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
          colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black
          ),
          dialogBackgroundColor: Colors.white
        ),
        child: child ?? const Text('')
      )
    );

    if(newDate == null){
      return;
    }

    setState((){
      dt = newDate;
      String dob = DateFormat('dd/MM/yyyy').format(newDate);
      controller.text = dob;
    });
  }


}