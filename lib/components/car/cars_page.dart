import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:erentcar_mobileapp/components/reservations/home_screen.dart';
import 'package:http/http.dart' as http;
import 'car_model.dart';


class cars_page extends StatefulWidget {
  const cars_page({Key? key}) : super(key: key);
  @override
  State<cars_page> createState() => _cars_pageState();
}

// class Car {
//   final String model;
//   final String description;
//   final String price;
//   Car(
//     this.model,
//     this.description,
//     this.price,
//   );
// }

class _cars_pageState extends State<cars_page> {

  CarModel _carmodel = CarModel();

  final String carCreateUrl = "https://erentcar.herokuapp.com/api/v1/cars/client/1/car-model/2";
  final String carsUrl = "https://erentcar.herokuapp.com/api/v1/cars/client/1";
  final String modelsUrl = "https://erentcar.herokuapp.com/api/v1/car-models";

  List dataRequestCar = [];
  List dataRequestModel = [];

  Future<CarModel> createCar(
  String? address,
  String? brand,
  int? year,
  String? model,
  int? mileage,
  int? seating,
  bool? manual,
  int? carValueInDollars,
  String? extraInformation,
  int? rate,
  int? rentAmountDay,
  String? imagePath,
  String? category,
  String? mechanicConditions,
  // int? clientId,
  // int? carModelId
      ) async {
    var response = await http.post(Uri.parse(carCreateUrl), body: {
      "address": address,
      "brand": brand,
      "year": year,
      "model": model,
      "mileage": mileage,
      "seating": seating,
      "manual": manual,
      "carValueInDollars": carValueInDollars,
      "extraInformation": extraInformation,
      "rate": rate,
      "rentAmountDay": rentAmountDay,
      "imagePath": imagePath,
      "category": category,
      "mechanicCondition": mechanicConditions,
    });

    if (response.statusCode == 200) {
      return CarModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load car');
    }
  }

  Future getCarData() async {
    var response = await http.get(Uri.parse(carsUrl),
    headers: {'Accept': 'application/json'});

    setState(() {
      var extractData = json.decode(response.body);
      dataRequestCar = extractData['content'];
    });
    return response.body;
  }

  Future getModelData() async {
    var response = await http.get(Uri.parse(modelsUrl),
        headers: {'Accept': 'application/json'});

    setState(() {
      var extractData = json.decode(response.body);
      dataRequestModel = extractData['content'];
    });
    return response.body;
  }

  // final List<Car> cars = <Car>[
  //   Car(
  //       'Audi',
  //       'A German automobile manufacturer based in Ingolstadt, Bavaria, Germany. Audi AG is a member of the Volkswagen Group.',
  //       '\$100'),
  //   Car(
  //       'BMW',
  //       'A German multinational company which currently produces automobiles and motorcycles.',
  //       '\$200'),
  //   Car(
  //       'Mercedes',
  //       'A German global automobile manufacturer and a division of the Daimler AG group.',
  //       '\$300'),
  //   Car(
  //       'Porsche',
  //       'A German automobile manufacturer headquartered in Stuttgart, Baden-Württemberg.',
  //       '\$400'),
  //   Car('Rayo McQueen', 'Kuchao.', '\$400'),
  //   Car('Volkswagen',
  //       'A German automaker headquartered in Ingolstadt, Bavaria.', '\$500'),
  // ];

  @override
  void initState() {
    getCarData();
    getModelData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blueAccent,
          title: const Text('My Vehicles'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                },
                icon: Icon(Icons.calendar_today))
          ],
        ),
        body: dataRequestCar.isNotEmpty ? buildCars() : Center(child: CircularProgressIndicator()),
        // body: Center(
        //   child: ElevatedButton(
        //     child: Text('make request'),
        //     onPressed: getModelData,
        //   )
        // ),
        floatingActionButton: showAddButton()
    );
  }

  Widget buildCars() {
    return ListView.separated(
      itemCount: dataRequestCar.length,
      itemBuilder: (BuildContext context, int index) {
        return buildRow(index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          thickness: 1,
          color: Colors.black26,
        );
      },
    );
  }

  Widget buildRow(int index) {
    return ListTile(
      leading: SizedBox(
        width: 100,
        height: 100,
        child: Image.network('https://imgur.com/c56QRt2.jpg'),
      ),
      title: Text(dataRequestModel[dataRequestCar[index]['carModelId']-1]['name']),
      // title: Text(dataRequestModel[index]['name']),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(dataRequestCar[index]['extraInformation'],
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              )),
          Text("S/." + dataRequestCar[index]['rentAmountDay'].toString(),
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              )),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // setState(() {
          //   cars.removeAt(index);
          // });
        },
      ),
    );
  }

  Widget showAddButton() {
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
    final carAddress = "string";
    final carBrand = "string";
    final carYear = TextEditingController();
    final carModel = TextEditingController();
    final carMileage = 0;
    final carSeating = 0;
    final carManual = true;
    final carValueInDollars = 0;
    final carExtraInformation = TextEditingController();
    final carRate = 0;
    final carRentAmountDay = TextEditingController();
    final carImagePath = "string";
    final carCategory = "LITTLE";
    final carMechanicConditions = "REGULAR";
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        title: const Text('Add Car'),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: carModel,
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
              controller: carExtraInformation,
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
              controller: carRentAmountDay,
              decoration: const InputDecoration(
                labelText: 'Car Rental Price',
                border: OutlineInputBorder(),
              ),
            ),
            const Divider(
              color: Colors.white,
              height: 16,
            ),
            TextField(
              controller: carYear,
              decoration: const InputDecoration(
                labelText: 'Car Year',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.save),
        onPressed: () async{
          int year = int.parse(carYear.text);
          int rent = int.parse(carRentAmountDay.text);
          CarModel car = await createCar(carAddress, carBrand, year, carModel.toString(), carMileage, carSeating, carManual, carValueInDollars, carExtraInformation.toString(), carRate, rent, carImagePath, carCategory, carMechanicConditions);

          setState(() {
            _carmodel = car;
          });

          // Navigator.pop(context);
        },
      ),
    );
  }
}
