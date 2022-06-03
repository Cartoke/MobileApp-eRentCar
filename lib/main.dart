import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myCars()
    );
  }
}

class myCars extends StatefulWidget {
  const myCars({Key? key}) : super(key: key);
  @override
  State<myCars> createState() => _myCarsState();
}

class _myCarsState extends State<myCars> {
  final List<String> cars = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('My Vehicles'),
      ),
      body: cars.length > 0 ? buildCars() :
        const Center(
          child: Text('No cars added yet'),
        ),
      floatingActionButton: showAddButton()
    );
  }

  Widget buildCars(){
    return ListView.separated(
      itemCount: cars.length,
      itemBuilder: (BuildContext context, int index){
        return buildRow(cars[index], index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          thickness: 1,
          color: Colors.black26,
        );
      },
    );
  }

  Widget buildRow(String car, int index){
    return ListTile(
      leading: const Icon(Icons.directions_car),
      title: Text(car),
      subtitle: const Text('Car Description'),
      onLongPress: (){
        setState(() {
          cars.removeAt(index);
        });
      },
    );
  }

  showAddButton(){
    return FloatingActionButton(
      backgroundColor: Colors.blueAccent,
      child: const Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => addCar()),
        );
      },
    );
  }

  addCar() {
    final textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Add Car'),
      ),
      body:
        Center(
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Car Name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.save),
        onPressed: () {
          setState(() {
            cars.add(textController.text);
            textController.clear();
          });
          Navigator.pop(context);
        },
      ),
    );
  }

}
