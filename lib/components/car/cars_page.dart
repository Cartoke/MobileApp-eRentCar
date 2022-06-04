import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/components/reservations/home_screen.dart';

class cars_page extends StatefulWidget {
  const cars_page({Key? key}) : super(key: key);
  @override
  State<cars_page> createState() => _cars_pageState();
}

class Car {
  final String name;
  //final String model;
  //final String year;
  final String description;
  //final String image;
  final String price;
  Car(this.name, this.description, this.price);
}

class _cars_pageState extends State<cars_page> {
  final List<Car> cars = <Car>[
    Car('Audi', 'A German automobile manufacturer based in Ingolstadt, Bavaria, Germany. Audi AG is a member of the Volkswagen Group.', '\$100'),
    Car('BMW', 'A German multinational company which currently produces automobiles and motorcycles.', '\$200'),
    Car('Mercedes', 'A German global automobile manufacturer and a division of the Daimler AG group.', '\$300'),
    Car('Porsche', 'A German automobile manufacturer headquartered in Stuttgart, Baden-Württemberg.', '\$400'),
    Car('Rayo McQueen', 'Kuchao.', '\$400'),
    Car('Volkswagen', 'A German automaker headquartered in Ingolstadt, Bavaria.', '\$500'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blueAccent,
          title: const Text('My Vehicles'),
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));}, icon: Icon(Icons.calendar_today))
          ],
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
      leading: SizedBox(
        width: 100,
        height: 100,
        child: Image.network('https://imgur.com/c56QRt2.jpg'),
      ),
      title: Text(car.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              car.description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              )
          ),
          Text(car.price,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              )
          ),
        ],
      ),

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

  Widget showAddButton(){
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
    final carPrice = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: const Text('Add Car'),
      ),
      body:
      Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: carName,
                  decoration: const InputDecoration(
                    labelText: 'Car Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 16,
                ),
                TextField(
                  controller: carDescription,
                  decoration: const InputDecoration(
                    labelText: 'Car Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 16,
                ),
                TextField(
                  controller: carPrice,
                  decoration: const InputDecoration(
                    labelText: 'Car Rental Price',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.save),
        onPressed: () {
          setState(() {
            Car car = Car(carName.text, carDescription.text, carPrice.text);
            cars.add(car);
          });
          Navigator.pop(context);
        },
      ),
    );
  }
}
