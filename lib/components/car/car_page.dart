import 'package:flutter/material.dart';

class car_page extends StatefulWidget {
  const car_page({Key? key}) : super(key: key);
  @override
  State<car_page> createState() => _car_pageState();
}

class Car {
  final String name;
  final String model;
  final String year;
  final String description;
  final String image;
  Car(this.name, this.model, this.year, this.description, this.image);
}

class _car_pageState extends State<car_page> {
  final List<Car> cars = <Car>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('My Vehicles'),
        ),
        body: cars.isNotEmpty ? buildCars() :
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

  Widget buildRow(Car car, int index){
    return ListTile(
      leading: const Icon(Icons.directions_car),
      title: Text(car.name),
      subtitle: Text(car.description),
      // onLongPress: (){
      //   setState(() {
      //     cars.removeAt(index);
      //   });
      // },
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: (){
          setState(() {
            cars.removeAt(index);
          });
        },
      ),
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
    final carName = TextEditingController();
    final carDescription = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Add Car'),
      ),
      body:
      Center(
          child: Column(
            children: [
              TextField(
                controller: carName,
                decoration: const InputDecoration(
                  labelText: 'Car Name',
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: carDescription,
                decoration: const InputDecoration(
                  labelText: 'Car Description',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.save),
        onPressed: () {
          setState(() {
            Car car = Car(carName.text, '', '', carDescription.text, '');
            cars.add(car);
          });
          Navigator.pop(context);
        },
      ),
    );
  }
}
