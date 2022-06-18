import 'dart:convert';

CarModel carModelFromJson(String str) => CarModel.fromJson(json.decode(str));

String carModelToJson(CarModel data) => json.encode(data.toJson());

class CarModel {
  int? id;
  String? address;
  Null? brand;
  int? year;
  String? model;
  int? mileage;
  int? seating;
  bool? manual;
  int? carValueInDollars;
  String? extraInformation;
  int? rate;
  int? rentAmountDay;
  String? imagePath;
  String? category;
  String? mechanicConditions;
  int? clientId;
  int? carModelId;

  CarModel(
      {this.id,
        this.address,
        this.brand,
        this.year,
        this.model,
        this.mileage,
        this.seating,
        this.manual,
        this.carValueInDollars,
        this.extraInformation,
        this.rate,
        this.rentAmountDay,
        this.imagePath,
        this.category,
        this.mechanicConditions,
        this.clientId,
        this.carModelId});

  CarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    brand = json['brand'];
    year = json['year'];
    model = json['model'];
    mileage = json['mileage'];
    seating = json['seating'];
    manual = json['manual'];
    carValueInDollars = json['carValueInDollars'];
    extraInformation = json['extraInformation'];
    rate = json['rate'];
    rentAmountDay = json['rentAmountDay'];
    imagePath = json['imagePath'];
    category = json['category'];
    mechanicConditions = json['mechanicConditions'];
    clientId = json['clientId'];
    carModelId = json['carModelId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['brand'] = this.brand;
    data['year'] = this.year;
    data['model'] = this.model;
    data['mileage'] = this.mileage;
    data['seating'] = this.seating;
    data['manual'] = this.manual;
    data['carValueInDollars'] = this.carValueInDollars;
    data['extraInformation'] = this.extraInformation;
    data['rate'] = this.rate;
    data['rentAmountDay'] = this.rentAmountDay;
    data['imagePath'] = this.imagePath;
    data['category'] = this.category;
    data['mechanicConditions'] = this.mechanicConditions;
    data['clientId'] = this.clientId;
    data['carModelId'] = this.carModelId;
    return data;
  }
}